<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker; 
use App\Role;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles') -> insert([
        	'role' => 'Protagonist',
        ]);

        DB::table('roles') -> insert([
        	'role' => 'Antagonist',
        ]);

    }
}
