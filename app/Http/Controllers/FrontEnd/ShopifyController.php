<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;


use Illuminate\Http\Request;

class ShopifyController extends Controller
{
    
    public function index() {
        $shopifyApi = app(‘ShopifyAPI’);
        $products = $shopifyApi->call('GET', 'admin/products.json&page=1');
        return view('index', (array) $products);
    }
}
