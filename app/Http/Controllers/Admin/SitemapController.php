<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;

use Carbon\Carbon;


class SitemapController extends Controller
{


  public function __construct()
  {
      $this->middleware('auth');
  //  $this->middleware(['auth', 'verified']);
  }

  public function index(){

      	$title = 'sitemap';
    		$today =  Carbon::now();

       return view('admin.sitemap.index',compact('title'),['today' => $today]);
  }


}
