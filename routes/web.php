<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'FrontEnd\LearnController@index')->name('welcome');
Route::get('/about', 'FrontEnd\LearnController@about')->name('about');


Route::get('/index', 'ShopifyController@index');


Auth::routes();

    Route::post('/newsletter','FrontEnd\NewsletterController@create_email')->name('newsletter');
Route::get('/login', 'Auth\LoginController@showWriterLoginForm')->name('login');
Route::get('/register', 'Auth\RegisterController@showWriterRegisterForm')->name('register');

Route::get('/home', 'FrontEnd\HomeController@index')->name('home');
Route::get('/contact','FrontEnd\ContactController@contact')->name('contact');
Route::post('/contact', ['as'=>'contactus.store','uses'=>'FrontEnd\ContactController@contactUSPost']);

 Route::get('/product', 'FrontEnd\HomeController@listprod')->name('product');


 Route::get('/fqa', 'FrontEnd\HomeController@fqa')->name('fqa');


Route::get('/search', 'FrontEnd\LearnController@search')->name('search');


Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin'],function() {

	Route::middleware('auth:admin')->group(function() {

		Route::get('/dashboard', 'DashboardController@dashboard')->name('dashboard');

    Route::get('/email', 'DashboardController@email')->name('pages.email');

      Route::delete('pages/email/{id}', 'DashboardController@destroy')->name('pages.destroy');
    Route::get('/calendar', 'DashboardController@calendar')->name('pages.calendar');
     Route::get('/profile', 'DashboardController@profile')->name('pages.profile');


		//Route::get('/profile', 'DashboardControlonler@profile')->name('profile');


      // CategoryController categories
      Route::get('/categories','CategoriesController@index')->name('index');
       Route::post('/categories','CategoriesController@changeStatus')->name('categories.changeStatus');
    Route::delete('/categories', 'CategoriesController@destroy')->name('categories.destroy');
      Route::resource('categories', 'CategoriesController');


      // Products
      Route::delete('products/destroy', 'ProductController@destroy')->name('products.massDestroy');
      Route::resource('products', 'ProductController');


   Route::get('sitemap', 'SitemapController@index')->name('sitemap');
  Route::resource('sitemap', 'SitemapController');





    // Venues
     Route::get('/venues','VenuesController@index')->name('index');
    Route::delete('venues/destroy', 'VenuesController@massDestroy')->name('venues.massDestroy');
    Route::resource('venues', 'VenuesController');

    // Events
    Route::delete('events/destroy', 'EventsController@massDestroy')->name('events.massDestroy');
    Route::resource('events', 'EventsController');

    // Meetings
    Route::delete('meetings/destroy', 'MeetingsController@massDestroy')->name('meetings.massDestroy');
    Route::resource('meetings', 'MeetingsController');





    //  Route::resource('profile', 'AdminUserController');

		Route::post('/logout','AdminUserController@logout')->name('logout');


	});

	Route::get('/admin/', 'AdminUserController@index')->name("index");

	Route::resource('/login', 'AdminUserController');
});
