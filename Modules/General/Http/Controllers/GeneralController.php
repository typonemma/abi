<?php

namespace Modules\General\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class GeneralController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        return view('general::index');
    }

    public function home()
    {
        return view('general::home');
    }

    public function aboutus()
    {
        return view('general::aboutus');
    }

    public function products()
    {
        return view('general::products');
    }

    public function blogs()
    {
        return view('general::blogs');
    }

    public function contact()
    {
        return view('general::contact');
    }

    public function shipment()
    {
        return view('general::shipment');
    }

    public function blog_detail()
    {
        return view('general::blog_detail');
    }

    public function product_detail()
    {
        return view('general::product_detail');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('general::create');
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
        return view('general::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('general::edit');
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
