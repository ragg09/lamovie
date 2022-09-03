<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker; 
use App\Film; 

class FilmTableSeeder extends Seeder
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
        $title=$faker->movies(100, $duplicates=FALSE);
        //var_dump($title);
        foreach ($title as $index){
        Film::create([
        'title' => $index,
        'story' => $faker->overview(),
        'released_at' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'duration' => $faker->time($time = '1'|'2'|'3'),
        'info' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
            ]);
        }
    }
}
