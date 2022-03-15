<?php

namespace Modules\Product\Http\Controllers;

use App\Models\Product;
use App\Models\Term;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Http\Controllers\ProductsController;
use DB;

class ProductController extends Controller
{
    public $product;
    public function __construct() {
      $this->product              =  new ProductsController();
    }
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

        return view('product::index',[
            'categories' => $arr,
            'tags' => $tags
        ]);
    }


    public function details(Request $request,$id)
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

            $product = Product::join('object_relationships as OR','OR.object_id','=','products.id')
            ->join('product_extras', 'products.id', '=', 'product_extras.product_id');
            $product = $product->where('products.id',$id)
                            ->select(
                                'products.*',
                                \DB::raw("max(CASE WHEN product_extras.key_name = '_product_related_images_url' THEN product_extras.key_value END) as product_related_img_json"),
                                \DB::raw('(SELECT terms.name from object_relationships as obr left join terms ON obr.term_id = terms.term_id where obr.object_id = products.id and terms.type="product_cat" limit 1) as tags')
                            )
                        ->groupBy('products.id')
                        ->first();
            if(isset($product)){
                $product->color = $this->getColorsByObjectId($id);
                $product->size = $this->getSizesByObjectId($id);
                $product->tag = $this->getTagsByObjectId($id);
                $product->related = $this->product->getRelatedItems($id);
            }
        return view('product::detail',[
            'product' => $product,
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
        $product = $product
        ->select(
            'products.*',
            \DB::raw('(SELECT terms.name from object_relationships as obr left join terms ON obr.term_id = terms.term_id where obr.object_id = products.id and terms.type="product_cat" limit 1) as tags')
        )->groupBy('products.id')->paginate($request->limit);
        // object_relationships

        // dd($product);
        return $product;
    }


    public function ajaxProductPromo(Request $request){
        $arr = isset($request['location'])?$request['location']:[];
        if($request->id != 0){
            array_push($arr,$request->id);
        }
        $product = Product::join('object_relationships as OR','OR.object_id','=','products.id');
        if($arr != []){
            $product = $product->whereIn('OR.term_id',[$arr]);
        }
        $product = $product->where('products.sale_price','>','0')
                        ->select(
                            'products.*',
                            \DB::raw('(SELECT terms.name from object_relationships as obr left join terms ON obr.term_id = terms.term_id where obr.object_id = products.id and terms.type="product_cat" limit 1) as tags')
                        )
                    ->groupBy('products.id')
                    ->get();
        // object_relationships

        return $product;
    }


    public function ajaxGetDetail(Request $request){
        $product = Product::join('object_relationships as OR','OR.object_id','=','products.id')
        ->join('product_extras', 'products.id', '=', 'product_extras.product_id');
        $product = $product->where('products.id',$request->id)
                        ->select(
                            'products.*',
                            \DB::raw("max(CASE WHEN product_extras.key_name = '_product_related_images_url' THEN product_extras.key_value END) as product_related_img_json"),
                            \DB::raw('(SELECT terms.name from object_relationships as obr left join terms ON obr.term_id = terms.term_id where obr.object_id = products.id and terms.type="product_cat" limit 1) as tags')
                        )
                    ->groupBy('products.id')
                    ->first();
        if(isset($product)){
            $product->color = $this->getColorsByObjectId($request->id);
            $product->size = $this->getSizesByObjectId($request->id);
        }

        return $product;
    }

    public function getColorsByObjectId($object_id){
        $get_colors_array = array();
        $get_colors_list  =  DB::table('terms')
                             ->where(['object_relationships.object_id' => $object_id, 'terms.type' => 'product_colors' ])
                             ->join('object_relationships', 'object_relationships.term_id', '=', 'terms.term_id')
                             ->join('term_extras', 'terms.term_id', '=', 'term_extras.term_id')
                             ->select('terms.*', DB::raw("max(CASE WHEN term_extras.key_name = '_product_color_code' THEN term_extras.key_value END) as color_code"))
                             ->groupBy('term_extras.term_id')
                             ->get()
                             ->toArray();

        if(count($get_colors_list) > 0){
          $term_data = array();

          foreach($get_colors_list as $row){
            array_push($term_data, (array) $row);
          }

          $get_colors_array = $term_data;
        }

        return $get_colors_array;
    }

    public function getSizesByObjectId($object_id){
        $get_sizes_array = array();
        $get_sizes_list  =  DB::table('terms')
                            ->where(['object_relationships.object_id' => $object_id, 'terms.type' => 'product_sizes' ])
                            ->join('object_relationships', 'object_relationships.term_id', '=', 'terms.term_id')
                            ->select('terms.*')
                            ->get()
                            ->toArray();

        if(count($get_sizes_list) > 0){
          $term_data = array();

          foreach($get_sizes_list as $row){
            array_push($term_data, (array) $row);
          }

          $get_sizes_array = $term_data;
        }

        return $get_sizes_array;
    }

    public function getTagsByObjectId($object_id){
        $get_tag_array = array();
        $get_tag_list  =  DB::table('terms')
                          ->where(['object_relationships.object_id' => $object_id, 'terms.type' => 'product_tag' ])
                          ->join('object_relationships', 'object_relationships.term_id', '=', 'terms.term_id')
                          ->join('term_extras', 'terms.term_id', '=', 'term_extras.term_id')
                          ->select('terms.*', DB::raw("max(CASE WHEN term_extras.key_name = '_tag_description' THEN term_extras.key_value END) as tag_description"))
                          ->groupBy('term_extras.term_id')
                          ->pluck('name')
                          ->toArray();
        if(count($get_tag_list) > 0){
          $term_data = array();

        //   foreach($get_tag_list as $row){
        //     array_push($term_data, (array) $row);
        //   }

          $get_tag_array = $get_tag_list;
        }

        return $get_tag_array;
    }
}
