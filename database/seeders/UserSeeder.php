<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // DB::table('users')->insert([
        //     'name' => "Astro Admin",
        //     'email' => "admin@admin.com",
        //     'password' => Hash::make('admin'),
        // ]);
       $user = User::create([
            'name' => "Kuma Codeastoro",
            'email' => "kuma@gmail.com",
            'password' => Hash::make('kuma'),
        ]);
        $user->assignRole('super-admin');
    }
}
