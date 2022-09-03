<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker; 
use App\Actor;

class ActorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $faker->addProvider(new \Xylis\FakerCinema\Provider\Person($faker));
        $actor=$faker->actors($gender = null, $count = 100, $duplicates = false);
        foreach($actor as $index){
        Actor::create([
        'name' => $index,
        'note' => $faker->word(),
            ]);
        }
    }
}
