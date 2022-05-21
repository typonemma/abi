<?php

namespace App\Http\Controllers;

use App\Compatibility;
use App\Library\CommonFunction;
use App\ProductCompatible;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductCompatibleController extends Controller
{
    public $classCommonFunction;
    public $option;

    public function __construct(){
        $this->classCommonFunction = new CommonFunction();
        $this->option              = new OptionController();
	}

    public function list($product_id, $type)
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;
        $data['compatibilities']  =  $this->getProductCompatibles(true, $type, $is_vendor);
        $data['settings'] = $this->option->getSettingsData();
        $data['product_id'] = $product_id;
        $data['type'] = $type;
        return view('pages.admin.product.product-compatibles', $data);
    }

    public function getProductCompatibles($pagination = false, $type, $is_vendor_login = false){

        $get_posts_for_product_compatibles = DB::table('compatibility')
                                            ->where('compatibility.type', '=', $type)
                                            ->orderBy('compatibility.id', 'desc');

        $get_posts_for_product_compatibles = $get_posts_for_product_compatibles->paginate(30);

        return $get_posts_for_product_compatibles;
    }

    public function create(Request $request)
    {
        ProductCompatible::create([
            'id' => 0,
            'product_id' => $request->product_id,
            'product_compatible_id' => $request->compatible_id,
            'created_at' => Carbon::now()->timestamp,
            'updated_at' => Carbon::now()->timestamp
        ]);
    }

    public function delete($product_id, $compatible_id)
    {
        ProductCompatible::where('product_id', '=', $product_id)
                            ->where('product_compatible_id', '=', $compatible_id)
                            ->delete();
    }
}
