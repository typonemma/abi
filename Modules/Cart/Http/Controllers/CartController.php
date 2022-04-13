<?php

namespace Modules\Cart\Http\Controllers;

use App\Cart as Cart;
use App\CartDetail;
use App\Http\Controllers\Frontend\FrontendAjaxController;
use App\Kota;
use App\Models\Product;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Validator;
use stdClass;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        if (!session('user')) {
            return back();
        }
        session()->forget('ship');
        session()->forget('coupon_amount');
        $controller = new FrontendAjaxController;
        $controller->classGetFunction->cart->session->remove('applyed_coupon_code');
        $controller->classGetFunction->cart->session->remove('applyed_coupon_price');
        $kota = Kota::all();
        $user = session('user');
        $cart = Cart::where('user_id', '=', $user->id)->first();
        $cart_detail = array();
        if ($cart != null) {
            $cart_detail = CartDetail::join('products', 'products.id', 'cart_detail.product_id')->where('cart_detail.cart_id', '=', $cart->id)->get(['products.id AS prod_id', 'products.title', 'cart_detail.*']);
        }
        return view('cart::index', ['cart' => $cart, 'kota' => $kota, 'cart_detail' => $cart_detail]);
    }

    public function checkout()
    {
        if (!session('user')) {
            return back();
        }
        if (!session('ship')) {
            session()->flash('ship-error', 'Please calculate the shipping cost first !');
            return back();
        }
        $user = session('user');
        $cart = Cart::where('user_id', '=', $user->id)->first();
        $cart_detail = array();
        if ($cart != null) {
            $cart_detail = CartDetail::where('cart_id', '=', $cart->id)->get();
            if (count($cart_detail) == 0) {
                session()->flash('empty', 'Cart cannot be empty !');
                return back();
            }
        }
        else {
            session()->flash('empty', 'Cart cannot be empty !');
            return back();
        }
        return view('cart::checkout', ['cart' => $cart, 'cart_detail' => $cart_detail]);
    }

    public function thankyou()
    {
        if (!session('user')) {
            return back();
        }
        session()->forget('ship');
        session()->forget('ship-error');
        session()->forget('coupon_amount');
        return view('cart::thankyou');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('cart::create');
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
        return view('cart::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('cart::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    // public function update(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }

    public function calculateShipping(Request $request)
    {
        $rules = [
            'city' => 'required',
            'postcode' => 'required|numeric',
            'address' => 'required'
        ];
        $messages = [
            'city.required' => 'City is required',
            'postcode.required' => 'Postcode is required',
            'postcode.numeric' => 'Postcode must be numeric',
            'address.required' => 'Address is required'
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
        $ship = new stdClass;
        $ship->city = $request->city;
        $ship->postcode = $request->postcode;
        $ship->address = $request->address;
        $ship->courier = 'jne';
        $request->session()->put('ship', $ship);
    }

    public function getShippingCost($cost)
    {
        $ship = session('ship');
        $ship->cost = $cost;
        session()->put('ship', $ship);
        return redirect('/cart-slice/checkout');
    }

    public function insert(Request $request)
    {
        $user = session('user');
        $cart = Cart::where('user_id', '=', $user->id)->first();
        if ($cart == null) {
            $cart = new Cart;
            $cart->user_id = $user->id;
            $cart->date = now()->toDateString('d-m-Y');
            $cart->total = 0;
            $cart->save();
        }
        $product = Product::find($request->id);
        $cart_detail = CartDetail::where('cart_id', '=', $cart->id)->where('product_id', '=', $product->id)->first();
        if ($cart_detail == null) {
            $cart_detail = new CartDetail;
            $cart_detail->cart_id = $cart->id;
            $cart_detail->product_id = $product->id;
            $cart_detail->price = $product->regular_price;
            $cart_detail->quantity = $request->quantity;
            $cart_detail->subtotal = $product->regular_price * $request->quantity;
            $cart->total += $cart_detail->subtotal;
        }
        else {
            $cart->total -= $cart_detail->subtotal;
            $cart_detail->quantity += $request->quantity;
            $cart_detail->subtotal = $product->regular_price * $cart_detail->quantity;
            $cart->total += $cart_detail->subtotal;
        }
        $cart_detail->save();
        $cart->save();
    }

    public function update($id, Request $request)
    {
        $cart_detail = CartDetail::find($id);
        $cart = Cart::find($cart_detail->cart_id);
        $cart->total -= $cart_detail->subtotal;
        $cart->save();
        $cart_detail->quantity += $request->d;
        $cart_detail->subtotal = $cart_detail->price * $cart_detail->quantity;
        $cart_detail->save();
        $cart->total += $cart_detail->subtotal;
        $cart->save();
        return $cart_detail->subtotal;
    }

    public function delete($id)
    {
        $cart_detail = CartDetail::find($id);
        $cart = Cart::find($cart_detail->cart_id);
        $cart->total -= $cart_detail->subtotal;
        $cart->save();
        CartDetail::destroy($id);
    }

    // public function placeOrder(Request $request)
    // {
    //     $rules = [
    //         'country' => 'required|max:30',
    //         'fname' => 'required|max:60',
    //         'email' => 'required|email|max:128',
    //         'phone' => ['required', 'regex:/^[0-9]+$/', 'bail', 'digits_between:1,30'],
    //         'address' => 'required|max:255',
    //         'note' => 'max:255',
    //         'ppa' => 'required'
    //     ];
    //     $messages = [
    //         'country.required' => 'Country is required',
    //         'fname.required' => 'Full name is required',
    //         'country.max' => 'Country must be at most 60 characters',
    //         'email.required' => 'Email is required',
    //         'email.email' => 'Invalid email',
    //         'email.max' => 'Email must be at most 128 characters',
    //         'phone.required' => 'Phone number is required',
    //         'phone.regex' => 'Phone number must be numeric',
    //         'phone.digits_between' => 'Phone number must be at most 30 characters',
    //         'address.required' => 'Address is required',
    //         'address.max' => 'Address must be at most 255 characters',
    //         'note.max' => 'Note must be at most 255 characters',
    //         'ppa.required' => 'The Privacy Policy Agreement must be checked'
    //     ];
    //     $validator = Validator::make($request->all(), $rules, $messages);
    //     if ($request->ajax()) {
    //         if ($validator->fails()) {
    //             return response()->json(array(
    //                 'success' => false,
    //                 'message' => 'There are incorect values in the form!',
    //                 'errors' => $validator->getMessageBag()->toArray()
    //             ), 422);
    //         }
    //     }
    //     $user = session('user');
    //     $ship = session('ship');
    //     $cart = Cart::where('user_id', '=', $user->id)->first();
    //     $cart_detail = CartDetail::where('cart_id', '=', $cart->id)->get();
    //     $user_order = new UserOrder;
    //     $user_order->id = 0;
    //     $user_order->invoice_number = '';
    //     $user_order->shipping_city = $ship->city;
    //     $user_order->postcode = $ship->postcode;
    //     $user_order->shipping_address = $ship->address;
    //     $user_order->courier = 'jne';
    //     $user_order->country = $request->country;
    //     $user_order->full_name = $request->fname;
    //     $user_order->email = $request->email;
    //     $user_order->phone_number = $request->phone;
    //     $user_order->address = $request->address;
    //     $user_order->note = $request->note;
    //     $user_order->payment_method = $request->payment;
    //     $user_order->total = $cart->total;
    //     $user_order->date = now()->toDateString('d/m/Y');
    //     $user_order->status = 0;
    //     $user_order->user_id = $user->id;
    //     $user_order->save();
    //     foreach ($cart_detail as $cd) {
    //         $user_order_details = new UserOrderDetails;
    //         $user_order_details->id = 0;
    //         $user_order_details->product_id = $cd->product_id;
    //         $user_order_details->price = $cd->price;
    //         $user_order_details->quantity = $cd->quantity;
    //         $user_order_details->shipping_cost = 20000;
    //         $user_order_details->user_order_id = $user_order->id;
    //         $user_order_details->save();
    //     }
    //     CartDetail::where('cart_id', '=', $cart->id)->delete();
    //     Cart::destroy($cart->id);
    // }
}
