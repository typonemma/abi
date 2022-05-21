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

    public function placeOrder(Request $request)
    {
        $bank_list = bank_list::paginate(1);
        session()->put('payment', $request->payment);
    }

    public function checkout()
    {
        if (!session('user')) {
            return back();
        }
        $user = session('user');
        $cart = Cart::where('user_id', '=', $user->id)->first();
        $cart_detail = CartDetail::where('cart_id', '=', $cart->id)->get();
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
        $user = session('user');
        $cart = Cart::where('user_id', $user->id)->first();
        $items = CartDetail::where('cart_id', $cart->id)->get();
        $weight = 0;
        foreach ($items as $item) {
            $product = Product::find($item->product_id);
            $weight += $product->weight * $item->quantity;
        }
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://api.rajaongkir.com/starter/city",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "key: 359e9d75c5ca6ec1a671c8212df4563e"
            )
        ));
        $response = json_decode(curl_exec($curl));
        curl_close($curl);
        $id = -1;
        foreach ($response->rajaongkir->results as $city) {
            if ($city->city_name == $request->city) {
                $id = $city->city_id;
                break;
            }
        }
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://api.rajaongkir.com/starter/cost",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => "origin=444&destination=".$id."&weight=".$weight."&courier=jne",
            CURLOPT_HTTPHEADER => array(
                "content-type: application/x-www-form-urlencoded",
                "key: 359e9d75c5ca6ec1a671c8212df4563e"
            )
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        return $response;
    }

    public function getShippingCost($cost)
    {
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
        if (!session('ship')) {
            session()->flash('ship-error', 'Please calculate the shipping cost first !');
            return back();
        }
        $ship = session('ship');
        $ship->cost = $cost;
        session()->put('ship', $ship);
        return redirect('/cart-slice/checkout');
    }

    public function insert(Request $request)
    {
        $user = session('user');
        $cart = Cart::where('user_id', '=', $user->id)->first();
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
}
