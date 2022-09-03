<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker; 
use App\Producer;

class ProducerTableSeeder extends Seeder
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
        $producer = $faker->directors($gender = null, $count = 20, $duplicates = false);
       	foreach($producer as $index){
		Producer::create([
		'name' => $index,
		'email' => $faker->email(),
		'website' => $faker->domainName(),
			]);
		}
    }
}
