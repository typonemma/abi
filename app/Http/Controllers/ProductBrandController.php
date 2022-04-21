<?php

namespace App\Http\Controllers;
use App\Compatibility;
use App\Library\CommonFunction;
use App\Models\Product;
use Illuminate\Http\Request;
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
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);        
        return view('pages.admin.product.product-brand-list', $get_data);
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