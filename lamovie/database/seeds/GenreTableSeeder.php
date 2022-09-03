<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker; 
use App\Genre;

class GenreTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $faker->addProvider(new \Xylis\FakerCinema\Provider\Movie($faker));
        $genre=$faker->movieGenres(20, $duplicates=FALSE);
       	foreach($genre as $index){
		Genre::create([
		'genre' => $index,
			]);
		}
    }
}
