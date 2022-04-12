<?php

namespace Modules\Product\Http\Controllers;

use App\Models\Product;
use App\Models\Term;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\bestsellerproduct_list;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    function search($array, $key, $value)
    {
        $results = array();

        if (is_array($array)) {
            if (isset($array[$key]) && $array[$key] == $value) {
                $results[] = $array;
            }

            foreach ($array as $subarray) {
                $results = array_merge($results, $this->search($subarray, $key, $value));
            }
        }

        return $results;
    }

    public function index()
    {

        $category = Term::where('status',1)
                    ->where('parent',0)
                    ->where('type','product_cat')
                    ->select('term_id','name','parent')
                    ->get()->toArray();

        $arr = [];
        foreach ($category as $key => $value) {
            $arr[$value['term_id']]['parent'] = $value;
            $each = Term::where('status',1)->where('parent',$value['term_id'])->where('type','product_cat')->select('term_id','name','parent')->get()->toArray();
            $arr[$value['term_id']]['child'] = $each;
        }

        //
        $tags = Term::where('status',1)
                ->where('parent',0)
                ->where('type','product_tag')
                ->select('term_id','name','parent')
                ->get()->toArray();

        $bestsellerproduct_list = bestsellerproduct_list::all();

        return view('product::index',[
            'categories' => $arr,
            'tags' => $tags,
            'bestsellerproduct_list' => $bestsellerproduct_list
        ]);
    }


    public function details()
    {
        $category = Term::where('status',1)
        ->where('parent',0)
        ->where('type','product_cat')
        ->select('term_id','name','parent')
        ->get()->toArray();

        $arr = [];
        foreach ($category as $key => $value) {
        $arr[$value['term_id']]['parent'] = $value;
        $each = Term::where('status',1)->where('parent',$value['term_id'])->where('type','product_cat')->select('term_id','name','parent')->get()->toArray();
        $arr[$value['term_id']]['child'] = $each;
        }

        //
        $tags = Term::where('status',1)
            ->where('parent',0)
            ->where('type','product_tag')
            ->select('term_id','name','parent')
            ->get()->toArray();

        return view('product::detail',[
            'categories' => $arr,
            'tags' => $tags
        ]);
    }


    public function ajaxProduct(Request $request){
        $arr = isset($request['location'])?$request['location']:[];
        if($request->id != 0){
            array_push($arr,$request->id);
        }
        $product = Product::join('object_relationships as OR','OR.object_id','=','products.id');
        if($arr != []){
            $product = $product->whereIn('OR.term_id',[$arr]);
        }
        $product = $product->select('products.*')->groupBy('products.id')->get();
        // object_relationships

        return $product;
    }


    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('product::create');
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
        return view('product::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('product::edit');
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
