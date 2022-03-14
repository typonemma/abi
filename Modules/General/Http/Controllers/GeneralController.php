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
use App\availableAt_list;
use App\aboutus_list;
use App\contactus_list;

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
        $relatedblog_list = relatedblog_list::where('post_type', '=', 'post-blog')->orderBy('id', 'DESC')->limit(3)->get();
        // $relatedblog_list->post_content = relatedblog_list::limit($relatedblog_list->post_content, 30);
        $ads_list = ads_list::all();
        $availableAt = availableAt_list::orderBy('term_id', 'desc')->limit(8)->orderBy('term_id', 'asc')->get();
        return view('general::home', ['bestsellerproduct_list' => $bestsellerproduct_list, 
        'relatedblog_list' => $relatedblog_list,  
        'ads_list' => $ads_list,
        'availableAt' => $availableAt
        // compact('relatedblog_list')
        ]);
    }

    public function aboutus()
    {
        $aboutus_list = aboutus_list::paginate(1);
        return view('general::aboutus', ['aboutus_list' => $aboutus_list]);
    }

    public function products()
    {
        return view('general::products');
    }

    public function blogs()
    {
        $per_page = 3;
        if (!isset($_GET['page'])) {
            $_GET['page'] = 1;
        }
        $page = intval($_GET['page']);
        $offset = $per_page * ($page - 1);
        $blogs_list_all = blogs_list::where('post_type', '=', 'post-blog')->get();   
        $blogs_list = blogs_list::where('post_type', '=', 'post-blog')->limit($per_page)->offset($offset)->get();
        $page_count = ceil(count($blogs_list_all) / $per_page);
        $relatedblog_list = relatedblog_list::where('post_type', '=', 'post-blog')->orderBy('id', 'DESC')->limit($per_page)->get();
        return view('general::blogs', ['blogs_list' => $blogs_list, 
        'relatedblog_list' => $relatedblog_list, 
        'page' => $page,
        'page_count' => $page_count]);
    }

    public function contact()
    {
        $contactus_list = contactus_list::paginate(1);
        return view('general::contact', ['contactus_list' => $contactus_list]);
    }

    public function shipment()
    {
        return view('general::shipment');
    }

    public function blog_detail($slug)
    {
        $blog_detail = blogs_list::where('post_slug', '=', $slug)->first();
        // $blog_detail = null;
        // if (isset($_GET['id'])) {
        //     $blog_detail = blogs_list::find($_GET['id']);
        // }
        $blogs_list = blogs_list::paginate(1);
        $relatedblog_list = relatedblog_list::orderBy('id', 'DESC')->paginate(3);
        return view('general::blog_detail', ['blog_detail' => $blog_detail, 
        'blogs_list' => $blogs_list,
        'relatedblog_list' => $relatedblog_list]);
    }

    public function product_detail()
    {
        $product_detail = availableAt_list::where('post_slug', '=', $slug)->first();
        $availableAt_list = availableAt_list::paginate(1);
        return view('general::product_detail',["product_detail" => $product_detail,
        "availableAt_list" => $availableAt_list]);
    }

    public function email_template()
    {
        return view('general::email_template');
    }

    public function sendEmail(Request $request){
        // Siapkan Data
        $contactus_list = contactus_list::paginate(1);
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
            return view('general::contact', ['contactus_list' => $contactus_list]);
        }
        $request->session()->flash('success', 'success');
        return view('general::contact', ['contactus_list' => $contactus_list]);
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
