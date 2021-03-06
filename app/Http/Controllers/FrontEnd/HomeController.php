<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;


use Illuminate\Http\Request;
use App\Models\User;
use DB;
use Session;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */


     protected $products;

     
    public function __construct(Product $products)
    {
        $this->middleware('auth');
         $this->products = $products;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()

    {
         $title = 'profile';
        $user  = Auth::user();

        return view('frontend.home',compact('user'));
    }
     public function listprod()

    {

  $products = $this->products->latest('created_at')->paginate(10);

        return view('frontend.product',compact('products'));
    }


 public function fqa()

    {

  $title ="frequently asked questions";
        return view('frontend.fqa',compact('title'));
    }




}
