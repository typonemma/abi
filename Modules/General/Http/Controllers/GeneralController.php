<?php

namespace Modules\General\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\str;
use App\blogs_list;
use App\bestsellerproduct_list;
use App\relatedblog_list;
use App\ads_list;

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
        $bestsellerproduct_list = bestsellerproduct_list::paginate(6);
        $relatedblog_list = relatedblog_list::orderBy('id', 'DESC')->paginate(3);
        // $relatedblog_list->post_content = relatedblog_list::limit($relatedblog_list->post_content, 30);
        $ads_list = ads_list::all();
        return view('general::home', ['bestsellerproduct_list' => $bestsellerproduct_list, 
        'relatedblog_list' => $relatedblog_list,  
        'ads_list' => $ads_list
        // compact('relatedblog_list')
        ]);
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
        $blogs_list = blogs_list::paginate(3);
        $relatedblog_list = relatedblog_list::orderBy('id', 'DESC')->paginate(3);
        return view('general::blogs', ['blogs_list' => $blogs_list, 
        'relatedblog_list' => $relatedblog_list]);
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

    public function email_template()
    {
        return view('general::email_template');
    }

    public function sendEmail(Request $request){
        // Siapkan Data
        $subject = $request->subject;
        $email = $request->email;
        $data = array(
                'name' => $request->name,
                'email_body' => $request->email_body,
                'phone' => $request->phone
            );

        // Kirim Email
        Mail::send('general::email_template', $data, function($mail) use($subject, $email) {
            $mail->to('wasni337@gmail.com', 'no-reply')
                    ->subject($subject);
            $mail->from('asepyalabae@gmail.com', $email);
        });

        // Cek kegagalan
        if (Mail::failures()) {
            return view('general::contact');
        }
        $request->session()->flash('success', 'success');
        return view('general::contact');
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
