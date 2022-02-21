<?php

namespace Modules\Auth\Http\Controllers;

use App\Models\User;
use App\Rules\PasswordCheck;
use App\Rules\PasswordMatch;
use App\Rules\UserExists;
use App\Rules\UserNotExist;
use App\UserBillingAddress;
use App\UserOrder;
use App\UserShippingAddress;
use Exception;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Laravel\Socialite\Facades\Socialite;

class AuthController extends Controller
{

    public function DisplayName($name)
    {
        $arr = explode(' ', $name);
        $display_name = '';
        foreach ($arr as $x) {
            $display_name = $display_name . ucfirst($x) . ' ';
        }
        $display_name = substr($display_name, 0, strlen($display_name) - 1);
        return $display_name;
    }

    public function home()
    {
        if (session('user')) {
            return back();
        }
        return view('auth::home');
    }

    /**
     * Display a listing of the resource.
     * @return Renderable
     */

    public function doLogin(Request $request)
    {
        $rules = [
            'phone_number' => ['required', 'numeric', 'bail', 'digits_between:1,30', new UserExists],
            'password' => 'required|max:60',
            'temp' => new PasswordCheck
        ];
        $messages = [
            'phone_number.required' => 'Phone number is required',
            'phone_number.numeric' => 'Phone number must be numeric',
            'phone_number.digits' => 'Phone number must be at most 30 characters',
            'password.required' => 'Password is required',
            'password.max' => 'Password must be at most 60 characters'
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($request->ajax()) {
            if ($validator->fails()) {
                return response()->json(array(
                    'success' => false,
                    'message' => 'There are incorect values in the form!',
                    'errors' => $validator->getMessageBag()->toArray()
                ), 422);
            }
        }
        $user = User::where('phone_number', '=', $request->phone_number)->first();
        $request->session()->put('user', $user);
    }

    public function verifyPassword(Request $request)
    {
        $rules = [
            'new_password' => 'required|max:60',
            'temp' => new PasswordMatch,
        ];
        $messages = [
            'new_password.required' => 'New password is required',
            'new_password.max' => 'New password must be at most 60 characters'
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($request->ajax()) {
            if ($validator->fails()) {
                return response()->json(array(
                    'success' => false,
                    'message' => 'There are incorect values in the form!',
                    'errors' => $validator->getMessageBag()->toArray()
                ), 422);
            }
        }
        $phone_number = session('phone_number');
        $user = User::where('phone_number', '=', $phone_number)->first();
        $user->password = bcrypt($request->new_password);
        $user->save();
        $request->session()->forget('phone_number');
    }

    public function redirectToFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function handleFacebookCallback()
    {
        try {
            $user = Socialite::driver('facebook')->user();
            $create['display_name'] = $this->DisplayName($user->getName());
            $create['name'] = $user->getName();
            $create['email'] = $user->getEmail();
            $create['password'] = '';
            $create['user_status'] = 1;
            $create['fb_id'] = $user->getId();
            $userModel = new User;
            $createdUser = $userModel->addNewFB($create);
            session()->put('user', $createdUser);
            Auth::loginUsingId($createdUser->id);
            return redirect('/auth/profile-detail');
        }
        catch (Exception $ex) {
            return redirect('auth/facebook');
        }
    }

    public function doRegister(Request $request)
    {
        $rules = [
            'name' => 'required|max:60',
            'phone_number' => ['required', 'numeric', 'bail', 'digits_between:1,30', new UserNotExist],
            'password' => 'required|max:60',
            'temp' => new PasswordMatch
        ];
        $messages = [
            'name.required' => 'Name is required',
            'name.max' => 'Name must be at most 60 characters',
            'phone_number.required' => 'Phone number is required',
            'phone_number.numeric' => 'Phone number must be numeric',
            'phone_number.digits' => 'Phone number must be at most 30 characters',
            'password.required' => 'Password is required',
            'password.max' => 'Password must be at most 60 characters',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($request->ajax()) {
            if ($validator->fails()) {
                return response()->json(array(
                    'success' => false,
                    'message' => 'There are incorect values in the form!',
                    'errors' => $validator->getMessageBag()->toArray()
                ), 422);
            }
        }
        $display_name = $this->DisplayName($request->name);
        User::create([
            'display_name' => $display_name,
            'name' => $request->name,
            'phone_number' => $request->phone_number,
            'password' => bcrypt($request->password),
            'user_status' => 1,
        ]);
    }

    public function profile_addresses()
    {
        if (!session('user')) {
            return back();
        }
        $user = session('user');
        $user_billing_address = UserBillingAddress::where('user_id', '=', $user->id)->first();
        $user_shipping_address = UserShippingAddress::where('user_id', '=', $user->id)->first();
        if ($user_billing_address == null && $user_shipping_address == null) {
            $user_billing_address = new UserBillingAddress();
            $user_shipping_address = new UserShippingAddress();
        }
        return view('auth::profile-addresses',
                        [
                            'user_billing_address' => $user_billing_address,
                            'user_shipping_address' => $user_shipping_address
                        ]
                    );
    }

    public function saveAddressChanges(Request $request)
    {
        $rules = [
            'bill_fname' => 'max:30',
            'bill_lname' => 'max:30',
            'bill_email' => 'nullable|email|max:128',
            'bill_phone' => 'nullable|numeric|bail|digits_between:0,30',
            'bill_address' => 'max:255',
            'bill_city' => 'max:30',
            'bill_district' => 'max:30',
            'bill_zipcode' => 'nullable|numeric|bail|digits_between:0,10',

            'ship_fname' => 'max:30',
            'ship_lname' => 'max:30',
            'ship_email' => 'nullable|email|max:128',
            'ship_phone' => 'nullable|numeric|bail|digits_between:0,30',
            'ship_address' => 'max:255',
            'ship_city' => 'max:30',
            'ship_district' => 'max:30',
            'ship_zipcode' => 'nullable|numeric|bail|digits_between:0,10'
        ];
        $messages = [
            'bill_fname.max' => 'Billing first name must be at most 30 characters',
            'bill_lname.max' => 'Billing last name must be at most 30 characters',
            'bill_email.email' => 'Invalid billing email',
            'bill_email.max' => 'Billing email must be at most 128 characters',
            'bill_phone.numeric' => 'Billing phone number must be numeric',
            'bill_phone.digits_between' => 'Billing phone number must be at most 30 characters',
            'bill_address.max' => 'Billing address must be at most 255 characters',
            'bill_city.max' => 'Billing city must be at most 30 characters',
            'bill_district.max' => 'Billing district must be at most 30 characters',
            'bill_zipcode.numeric' => 'Billing zipcode must be numeric',
            'bill_zipcode.digits_between' => 'Billing zipcode must be at most 10 characters',

            'ship_fname.max' => 'Shipping first name must be at most 30 characters',
            'ship_lname.max' => 'Shipping last name must be at most 30 characters',
            'ship_email.email' => 'Invalid shipping email',
            'ship_email.max' => 'Shipping email must be at most 128 characters',
            'ship_phone.numeric' => 'Shipping phone number must be numeric',
            'ship_phone.digits_between' => 'Shipping phone number must be at most 30 characters',
            'ship_address.max' => 'Shipping address must be at most 255 characters',
            'ship_city.max' => 'Shipping city must be at most 30 characters',
            'ship_district.max' => 'Shipping district must be at most 30 characters',
            'ship_zipcode.numeric' => 'Shipping zipcode must be numeric',
            'ship_zipcode.digits_between' => 'Shipping zipcode must be at most 10 characters'
        ];
        $request->validate($rules, $messages);
        $user = session('user');
        $user_billing_address = UserBillingAddress::where('user_id', '=', $user->id)->first();
        $user_shipping_address = UserShippingAddress::where('user_id', '=', $user->id)->first();
        if ($user_billing_address != null && $user_shipping_address != null) {
            $user_billing_address->first_name = $request->bill_fname;
            $user_billing_address->last_name = $request->bill_lname;
            $user_billing_address->email = $request->bill_email;
            $user_billing_address->phone_number = $request->bill_phone;
            $user_billing_address->address = $request->bill_address;
            $user_billing_address->city = $request->bill_city;
            $user_billing_address->district = $request->bill_district;
            $user_billing_address->zip_code = $request->bill_zipcode;
            $user_billing_address->save();

            $user_shipping_address->first_name = $request->ship_fname;
            $user_shipping_address->last_name = $request->ship_lname;
            $user_shipping_address->email = $request->ship_email;
            $user_shipping_address->phone_number = $request->ship_phone;
            $user_shipping_address->address = $request->ship_address;
            $user_shipping_address->city = $request->ship_city;
            $user_shipping_address->district = $request->ship_district;
            $user_shipping_address->zip_code = $request->ship_zipcode;
            $user_shipping_address->save();
        }
        else {
            UserBillingAddress::create([
                'first_name' => $request->bill_fname,
                'last_name' => $request->bill_lname,
                'email' => $request->bill_email,
                'phone_number' => $request->bill_phone,
                'address' => $request->bill_address,
                'city' => $request->bill_city,
                'district' => $request->bill_district,
                'zip_code' => $request->bill_zipcode,
                'user_id' => $user->id
            ]);

            UserShippingAddress::create([
                'first_name' => $request->ship_fname,
                'last_name' => $request->ship_lname,
                'email' => $request->ship_email,
                'phone_number' => $request->ship_phone,
                'address' => $request->ship_address,
                'city' => $request->ship_city,
                'district' => $request->ship_district,
                'zip_code' => $request->ship_zipcode,
                'user_id' => $user->id
            ]);
        }
        $request->session()->flash('success', 'success');
        return redirect('/auth/profile-addresses');
    }

    public function profile_detail()
    {
        if (!session('user')) {
            return back();
        }
        return view('auth::profile-detail');
    }

    public function saveAccountChanges(Request $request)
    {
        $rules = [
            'first_name' => 'required|max:30',
            'last_name' => 'max:30',
            'email' => 'nullable|email|max:128',
            'phone_number' => 'nullable|numeric|bail|digits_between:0,30',
            'new_password' => 'max:60',
            'temp' => new PasswordMatch
        ];
        $messages = [
            'first_name.required' => 'First name is required',
            'first_name.max' => 'First name must be at most 30 characters',
            'email.email' => 'Invalid email',
            'email.max' => 'Email must be at most 128 characters',
            'phone_number.numeric' => 'Phone number must be numeric',
            'phone_number.digits_between' => 'Phone number must be at most 30 characters',
            'new_password.max' => 'New password must be at most 60 characters'
        ];
        $request->validate($rules, $messages);
        $display_name = ucfirst($request->first_name) . ' ' . ucfirst($request->last_name);
        $name = $request->first_name . ' ' . $request->last_name;
        $email = $request->email;
        $phone_number = $request->phone_number;
        $new_password = $request->new_password;
        $u = session('user');
        $user = User::find($u->id);
        $user->display_name = $display_name;
        $user->name = $name;
        if (trim($email, ' ') != '') {
            $user->email = $email;
        }
        if (trim($phone_number, ' ') != '') {
            $user->phone_number = $phone_number;
        }
        if (trim($new_password, ' ') != '') {
            $user->password = bcrypt($new_password);
        }
        $user->save();
        $request->session()->put('user', $user);
        $request->session()->flash('success', 'success');
        return redirect('/auth/profile-detail');
    }

    public function profile_history()
    {
        if (!session('user')) {
            return back();
        }
        $user = session('user');
        $per_page = 2;
        if (!isset($_GET['page'])) {
            $_GET['page'] = 1;
        }
        $page = intval($_GET['page']);
        $offset = $per_page * ($page - 1);
        $user_order_all = UserOrder::where('user_id', '=', $user->id)->where('status', '!=', 0)->get();
        $user_order = UserOrder::where('user_id', '=', $user->id)->where('status', '!=', 0)->limit($per_page)->offset($offset)->get();
        $page_count = ceil(count($user_order_all) / $per_page);
        return view('auth::profile-history', ['user_order' => $user_order, 'page' => $page, 'page_count' => $page_count]);
    }

    public function profile_yourorder()
    {
        if (!session('user')) {
            return back();
        }
        $user = session('user');
        $user_order = UserOrder::where('user_id', '=', $user->id)->where('status', '=', 0)->get();
        return view('auth::profile-yourorder', ['user_order' => $user_order]);
    }

    public function logout()
    {
        session()->forget('user');
        return redirect('/auth');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('auth::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('auth::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('auth::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }
}
