<?php

namespace App\Http\Controllers;

use App\Models\Common;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // return view('home');
        $users = User::where('id', '!=', Auth::user()->id)->get();
        return view('chat_home', compact('users'));
    }

    public function just_form()
    {
        // return view('home');
        $users = User::where('id', '!=', Auth::user()->id)->get();
        return view('crud/just_form', compact('users'));
    }

    public function just_form_save(Request $request)
    {
        // echo $request->name;
        // dd($request->all());

        // $data = array();
        // $data['name'] = $request->name;
        // $data['email'] = $request->email;
        // $data['phone'] = $request->phone;

        $data = $request->except(['_token']);
        $common = new Common();
        // $common->save_just_form($data);
        
        $common->name = $request->name;
        $common->email = $request->email;
        $common->phone = $request->phone;
        $common->save();

        return redirect('/just_form_list');
    }

    public function just_form_list()
    {
        $common = new Common();
        $list = $common::all();
        // echo '<pre>';
        // print_r($list);
        // exit();

        // $list = $common->just_form_list();
        // $list = DB::table('just_form')->get();
        // dd($list);
        return view('crud/just_form_list', ['list' => $list]);
    }

    public function just_form_edit($id)
    {
        $common = new Common();
        $data = $common::where('id', $id)->first();
        return view('crud/just_form_edit', ['data' => $data]);
    }

    public function just_form_update($id, Request $request)
    {
        $common = new Common();
        $data = $request->except(['_token']);
        $common::where('id', $id)->update($data);

        return redirect('/just_form_list');
    }

    public function just_form_delete($id)
    {
        $common = new Common();
        $common::where('id', $id)->delete();
        return redirect('/just_form_list');
    }


}
