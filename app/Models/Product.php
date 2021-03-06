<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
  use HasFactory;


  public $table = 'products';

  protected $dates = [
    'created_at',
    'updated_at',
    'deleted_at',
  ];

  protected $fillable = [
    'name',
    'category_id',
    'slug',
    'image',
    'price',
    'description',
    'created_at',
    'updated_at',
    'deleted_at',
  ];


  public function category() {
  return $this->belongsTo('App\Models\Category','category_id');
  }
  public function orders(){
    return $this->belongsToMany(Order::class);
  }

  public function categories() {
        return $this->belongsTo('App\Models\Category','category_id');
    }

}
