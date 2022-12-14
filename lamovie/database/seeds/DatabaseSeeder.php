<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {   
        $this->call(ActorTableSeeder::class);
        $this->call(FilmTableSeeder::class);
        $this->call(GenreTableSeeder::class);
        $this->call(ProducerTableSeeder::class);
        $this->call(RoleTableSeeder::class);
        }
}
