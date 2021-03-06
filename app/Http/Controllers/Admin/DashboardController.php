<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;


use App\Models\AdminUser;
use App\Models\User;
use App\Models\Email;
use App\Models\Event;
use App\Models\Venue;
use Illuminate\Http\Request;
use DB;
use Session;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use View;

class DashboardController extends Controller
{




 public $sources = [
        [
            'model'      => '\\App\\Models\\Event',
            'date_field' => 'start_time',
            'field'      => 'name',
            'prefix'     => 'Event',
            'suffix'     => '',
            'route'      => 'admin.events.edit',
        ],
  
    ];
    public function __construct()
    {
        $this->middleware('auth');
    }

 
    public function dashboard() {
 
        $user = new User();


        $year = ['2015','2016','2017','2018','2019','2020','2021'];


        $user = [];

        foreach ($year as $key => $value) {

            $user[] = User::where(\DB::raw("DATE_FORMAT(created_at, '%Y')"),$value)->count();

        }


        return view('admin.dashboard', compact('user'))
  ->with('year',json_encode($year,JSON_NUMERIC_CHECK))
  ->with('user',json_encode($user,JSON_NUMERIC_CHECK));
    }

   public function profile(User $user)
    {
        $title = 'profile';
        $user  = Auth::user();
     //   dd($user);
        return view('admin.pages.profile', compact('user'));
    }



    public function calendar(){

        $events = [];

        $venues = Venue::all();

        foreach ($this->sources as $source) {
            $calendarEvents = $source['model']::when(request('venue_id') && $source['model'] == '\App\Models\Event', function($query) {
                return $query->where('venue_id', request('venue_id'));
            })->get();
            foreach ($calendarEvents as $model) {
                $crudFieldValue = $model->getOriginal($source['date_field']);

                if (!$crudFieldValue) {
                    continue;
                }

                $events[] = [
                    'title' => trim($source['prefix'] . " " . $model->{$source['field']}
                        . " " . $source['suffix']),
                    'start' => $crudFieldValue,
                    'url'   => route($source['route'], $model->id),
                ];
            }
        }

          return view('admin.pages.calendar',compact('events', 'venues'));


    }
    public function email(){


       $data = Email::all();
      // dd($emails);
        return view('admin.pages.email')->with([
            'data'  => $data
          ]);

        
    }

public function destroy($id)
 
    {

        $emails = Email::findOrFail($id);
        $emails->delete();
        return back();
    }

}
