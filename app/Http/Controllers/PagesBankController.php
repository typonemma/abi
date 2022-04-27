<?php

namespace App\Http\Controllers;
use App\Compatibility;
use App\Library\CommonFunction;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\bank_list;

class PagesBankController extends Controller
{
    public $classCommonFunction;

    public function __construct(){
        $this->classCommonFunction = new CommonFunction();
	}

    public function list()
    {
        $data = array();
        $search_value = '';

        if(isset($_GET['term_bank']) && $_GET['term_bank'] != ''){
            $search_value = $_GET['term_bank'];
        }

        $data = $this->classCommonFunction->commonDataForAllPages(); 
        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;
        
        $data['bank_all_data']  =  $this->getBank(true, $search_value, $is_vendor);
        $data['search_value']      =  $search_value;

        return view('pages.admin.cms.pages-bank-list', $data);
    }

    public function getBank($pagination = false, $search_val = null, $is_vendor_login = false){
        if(!empty($search_val) && $search_val != ''){
          $get_posts_for_bank = DB::table('list_bank')
                                            ->where('list_bank.title', 'LIKE', '%'. $search_val .'%')
                                            ->orderBy('list_bank.id', 'desc');
        }
        elseif(!empty($search_val) && $search_val != ''){
            $get_posts_for_bank = DB::table('list_bank')
                                            ->where('list_bank.title', 'LIKE', '%'. $search_val .'%')
                                            ->orderBy('list_bank.id', 'desc');
        }
        elseif (empty($search_val)) {
            $get_posts_for_bank = DB::table('list_bank')
                                            ->where('list_bank.title', 'LIKE', '%'. $search_val .'%')
                                            ->orderBy('list_bank.id', 'desc');
        }
        else{
            $get_posts_for_bank = DB::table('list_bank')
                                            ->orderBy('list_bank.id', 'desc');
        }

        $get_posts_for_bank = $get_posts_for_bank->paginate(5);

        return $get_posts_for_bank;
      }

    public function store()
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);        
        return view('pages.admin.cms.add-page-bank', $get_data);
    }

    public function create(Request $request)
    {
        $rules = [
            'title' => 'required'
        ];
        $request->validate($rules);
        bank_list::create([
            'id' => 0,
            'title' => $request->title,
            'nomor_rekening' => $request->nomor_rekening,
            'content' => $request->content,
            'created_at' => date("y-m-d H:i:s", strtotime('now')),
            'updated_at' => date("y-m-d H:i:s", strtotime('now'))
        ]);
        return redirect('/admin/PagesBank/store');
    }

    public function edit($id)
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();
        $get_data = $this->createCompatibilityContentData($data);
        $get_data['bank_list'] = bank_list::find($id);
        return view('pages.admin.cms.update-bank-list', $get_data);
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'title' => 'required'
        ];
        $request->validate($rules);
        $compatibility = bank_list::find($id);
        $compatibility->title = $request->title;
        $compatibility->nomor_rekening = $request->nomor_rekening;
        $compatibility->content = $request->content;
        $compatibility->save();
        return redirect('/admin/PagesBank/edit/' . $id);
    }

    public function delete($id)
    {
        bank_list::destroy($id);
        return redirect('/admin/PagesBank/list');
    }
    
    public function createCompatibilityContentData($data)
    {
        $data['bank'] = bank_list::all();

        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;

        return $data;
    }    
}