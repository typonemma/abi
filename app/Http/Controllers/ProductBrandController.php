<?php

namespace App\Http\Controllers;
use App\Compatibility;
use App\Library\CommonFunction;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\product_brand;

class ProductBrandController extends Controller
{
    public $classCommonFunction;

    public function __construct(){
        $this->classCommonFunction = new CommonFunction();
	}

    public function list()
    {
        $data = array();
        $search_value = '';

        if(isset($_GET['term_brand']) && $_GET['term_brand'] != ''){
            $search_value = $_GET['term_brand'];
        }

        $data = $this->classCommonFunction->commonDataForAllPages();
        
        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;
        
        $data['brand_all_data']     =  $this->getBrand(true, $search_value, $is_vendor);
        $data['search_value']       =  $search_value;

        return view('pages.admin.product.product-brand-list', $data);
    }

    public function getBrand($pagination = false, $search_val = null, $is_vendor_login = false){
        if(!empty($search_val) && $search_val != ''){
          $get_posts_for_brand = DB::table('product_brand')
                                            ->where('product_brand.name_brand', 'LIKE', '%'. $search_val .'%')
                                            ->orderBy('product_brand.id', 'desc');
        }
        elseif(!empty($search_val) && $search_val != ''){
            $get_posts_for_brand = DB::table('product_brand')
                                            ->where('product_brand.name_brand', 'LIKE', '%'. $search_val .'%')
                                            ->orderBy('product_brand.id', 'desc');
        }
        elseif (empty($search_val)) {
            $get_posts_for_brand = DB::table('product_brand')
                                            ->where('product_brand.name_brand', 'LIKE', '%'. $search_val .'%')
                                            ->orderBy('product_brand.id', 'desc');
        }
        else{
            $get_posts_for_brand = DB::table('product_brand')
                                            ->orderBy('product_brand.id', 'desc');
        }

        $get_posts_for_brand = $get_posts_for_brand->paginate(5);

        return $get_posts_for_brand;
      }

    public function store()
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);        
        return view('pages.admin.product.add-product-brand', $get_data);
    }

    public function create(Request $request)
    {
        $rules = [
            'name_brand' => 'required'
        ];
        $request->validate($rules);
        product_brand::create([
            'id' => 0,
            'product_id' => $request->product_id,
            'name_brand' => $request->name_brand,
            'logo_brand' => 0,
            'status' => $request->status,
            'created_at' => Carbon::now()->timestamp,
            'updated_at' => Carbon::now()->timestamp
        ]);
        return redirect('/admin/ProductBrand/store');
    }

    public function edit($id)
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);
        $get_data['product_brand'] = product_brand::find($id);
        return view('pages.admin.product.update-product-brand', $get_data);
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'name_brand' => 'required'
        ];
        $request->validate($rules);
        $compatibility = product_brand::find($id);
        $compatibility->product_id = $request->product_id;
        $compatibility->name_brand = $request->name_brand;
        $compatibility->logo_brand = 0;
        $compatibility->status = $request->status;
        $compatibility->save();
        return redirect('/admin/ProductBrand/edit/' . $id);
    }

    public function delete($id)
    {
        product_brand::destroy($id);
        return redirect('/admin/ProductBrand/list');
    }

    public function createCompatibilityContentData($data)
    {
        $data['products'] = Product::all();
        $data['brand'] = product_brand::all();

        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;

        return $data;
    }    
}