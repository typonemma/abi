<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Compatibility;
use App\Library\CommonFunction;
use App\Models\Product;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class CompatibilityController extends Controller
{
    public $classCommonFunction;
    public $option;

    public function __construct(){
        $this->classCommonFunction = new CommonFunction();
        $this->option              = new OptionController();
	}

    public function list($product_id)
    {
        $data = array();
        $search_value = '';

        if(isset($_GET['term_compatibility']) && $_GET['term_compatibility'] != ''){
            $search_value = $_GET['term_compatibility'];
        }

        $data = $this->classCommonFunction->commonDataForAllPages();
        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;

        $data['compatibility_all_data']  =  $this->getCompatibility(true, $search_value, $product_id, $is_vendor);
        $data['search_value']      =  $search_value;
        $data['settings'] = $this->option->getSettingsData();

        $product = Product::find($product_id);

        session()->put('product', $product);

        return view('pages.admin.compatibility.compatibility-list', $data);
    }

    public function getCompatibility($pagination = false, $search_val = null, $product_id = null, $is_vendor_login = false){

        if(!empty($search_val) && $search_val != ''){
          $get_posts_for_compatibility = DB::table('compatibility')
                                            ->where('compatibility.name', 'LIKE', '%'. $search_val .'%')
                                            ->where('product_id', '=', $product_id)
                                            ->orderBy('compatibility.id', 'desc');
        }
        elseif(!empty($search_val) && $search_val != ''){
            $get_posts_for_compatibility = DB::table('compatibility')
                                            ->where('compatibility.name', 'LIKE', '%'. $search_val .'%')
                                            ->where('product_id', '=', $product_id)
                                            ->orderBy('compatibility.id', 'desc');
        }
        elseif (empty($search_val)) {
            $get_posts_for_compatibility = DB::table('compatibility')
                                            ->where('compatibility.name', 'LIKE', '%'. $search_val .'%')
                                            ->where('product_id', '=', $product_id)
                                            ->orderBy('compatibility.id', 'desc');
        }
        else{
            $get_posts_for_compatibility = DB::table('compatibility')
                                                ->where('product_id', '=', $product_id)
                                                ->orderBy('compatibility.id', 'desc');
        }

        $get_posts_for_compatibility = $get_posts_for_compatibility->paginate(30);

        return $get_posts_for_compatibility;
      }

    public function store()
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);
        return view('pages.admin.compatibility.add-compatibility', $get_data);
    }

    public function create(Request $request)
    {
        $rules = [
            'name' => 'required'
        ];
        $request->validate($rules);
        $product = session('product');
        Compatibility::create([
            'id' => 0,
            'product_id' => $product->id,
            'brand_id' => $request->brand,
            'name' => $request->name,
            'type' => $request->type,
            'created_at' => Carbon::now()->timestamp,
            'updated_at' => Carbon::now()->timestamp
        ]);
        $compatibility = Compatibility::orderBy('id', 'desc')->first();
        return redirect('/admin/compatibility/edit/' . $compatibility->id);
    }

    public function createCompatibilityContentData($data)
    {
        $data['products'] = Product::all();
        $data['brands'] = Brand::all();

        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;

        return $data;
    }

    public function edit($id)
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);
        $get_data['compatibility'] = Compatibility::find($id);
        return view('pages.admin.compatibility.edit-compatibility', $get_data);
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'name' => 'required'
        ];
        $request->validate($rules);
        $product = session('product');
        $compatibility = Compatibility::find($id);
        $compatibility->name = $request->name;
        $compatibility->product_id = $product->id;
        $compatibility->brand_id = $request->brand;
        $compatibility->type = $request->type;
        $compatibility->save();
        return redirect('/admin/compatibility/edit/' . $id);
    }

    public function delete($id)
    {
        Compatibility::destroy($id);
        return redirect('/admin/compatibility/list');
    }
}
