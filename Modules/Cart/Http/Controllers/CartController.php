<?php

namespace Modules\Cart\Http\Controllers;

use App\Cart as Cart;
use App\CartDetail;
use App\Kota;
use App\Models\Product;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        $kota = Kota::all();
        $user = session('user');
        $cart = Cart::where('user_id', '=', $user->id)->first();
        $cart_detail = CartDetail::join('products', 'products.id', 'cart_detail.product_id')->where('cart_detail.cart_id', '=', $cart->id)->get(['products.id AS prod_id', 'products.title', 'cart_detail.*']);
        return view('cart::index', ['kota' => $kota, 'cart_detail' => $cart_detail]);
    }

    public function checkout()
    {
        return view('cart::checkout');
    }
    public function thankyou()
    {
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
        $request->validate($rules, $messages);
        return redirect('/cart-slice');
    }

    public function couponCode(Request $request)
    {
        $rules = [
            'coupon' => 'required'
        ];
        $messages = [
            'coupon.required' => 'Coupon code is required'
        ];
        $request->validate($rules, $messages);
        return redirect('/cart-slice');
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
        $cart_detail = CartDetail::where('product_id', $product->id)->first();
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
            $cart_detail->quantity = $cart_detail->quantity + $request->quantity;
            $cart_detail->subtotal = $product->regular_price * $cart_detail->quantity;
            $cart->total = $product->regular_price * $cart_detail->quantity;
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
