<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;



class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user = [
            'name' => 'Kelompok-5',
            'email' => 'admi5@gmail.com',
            'password' => \bcrypt('kelompok5')
        ];

        User::insert($user);
    }
}