<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Carbon\Carbon;
use App\Models\Product;
use App\Models\Category;

use DB;


class LearnController extends Controller
{
    //
    public function index(){

      $today =  Carbon::now();
      $title   = "Home";
     return view('frontend.welcome',compact('title'));

    }
    public function about(){
       $today =  Carbon::now();
    return view('frontend.about',['today' => $today]);

    }


    public function search(Request $request){


    $search = $request->input('search');
      // Search in the title and body columns from the posts table
    $products = Product::with('category')
        ->where('name', 'LIKE', "%{$search}%")
        ->orWhere('price', 'LIKE', "%{$search}%")
        ->orWhere('image', 'LIKE', "%{$search}%")
        ->get();

    // Return the search view with the resluts compacted

    // Return the search view with the resluts compacted
    return view('frontend.results', compact('products'));
}


}
