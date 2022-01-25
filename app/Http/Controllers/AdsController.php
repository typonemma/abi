<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Library\CommonFunction;
use App\Models\Ads;
use DB;
use Illuminate\Support\Facades\Validator;

class AdsController extends Controller
{
    public $classCommonFunction;

    public function __construct(){
        $this->classCommonFunction  =   new CommonFunction();
	}
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();

        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;
        $data['available'] = Ads::all();
        return view('ads.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();

        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;
        return view('ads.create',$data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        \DB::beginTransaction();
        try{
            $rules = [
                'name' => 'required',
                'url' => 'required',
                'hf_available_at_picture' => 'required',
                'start_date' => 'required',
                'end_date' => 'required',
                'status' => 'required'
            ];

            $message =[
                'hf_available_at_picture.required' => 'The image field is required.'
            ];

            $validator = Validator::make($request->all(),$rules,$message);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator);
            }

            $data = new Ads();
            $data->title = $request->name;
            $data->url = $request->url;
            $data->image = $request->hf_available_at_picture;
            $data->start_date = $request->start_date;
            $data->end_date = $request->end_date;
            $data->status = $request->status;
            $data->save();
            \DB::commit();
            return redirect()->route('admin.ads_list')->with('success','Berhasil Input Data!');
        }catch(\Exception $e){
            \DB::rollback();
            return redirect()->back()->withErrors($e->getMessage());
        }
        // dd($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = array();
        $data = $this->classCommonFunction->commonDataForAllPages();

        $is_vendor = is_vendor_login();
        $sidebar['is_vendor_login'] = $is_vendor;
        $data['sidebar_data'] = $sidebar;
        $data['ads'] = Ads::where('id',$id)->first();
        return view('ads.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        \DB::beginTransaction();
        try{
            $rules = [
                'name' => 'required',
                'url' => 'required',
                'start_date' => 'required',
                'end_date' => 'required',
                'status' => 'required'
            ];

            $validator = Validator::make($request->all(),$rules);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator);
            }

            $data = Ads::where('id',$id)->first();
            $data->title = $request->name;
            $data->url = $request->url;
            if(isset($request->hf_available_at_picture)){
                $data->image = $request->hf_available_at_picture;
            }
            $data->start_date = $request->start_date;
            $data->end_date = $request->end_date;
            $data->status = $request->status;
            $data->save();
            \DB::commit();
            return redirect()->route('admin.ads_list')->with('success','Berhasil Update Data!');
        }catch(\Exception $e){
            \DB::rollback();
            return redirect()->back()->withErrors($e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
