<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $faker = \Faker\Factory::create();
     for ($i=0; $i < 20; $i++) {
       DB::table('users')->insert([
         'name' =>$faker->word,
     'email' => $faker->unique()->safeEmail,
       'email_verified_at' => now(),
        'photo' =>$faker->image('public/images/avatars/',640,480, null, false),
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
         'created_at' => date('Y-m-d H:i:s'),
         'updated_at' => date('Y-m-d H:i:s'),
         'remember_token' => Str::random(10),
       ]);
    }
}
}