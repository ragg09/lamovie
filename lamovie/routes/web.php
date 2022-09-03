<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Mail;
use App\Mail\WelcomeMail;
use ConsoleTVs\Profanity\Facades\Profanity;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/home', 'HomeController@index')->name('home');

// Route::get('/try', function () {
//     return view('try/trylang');
// });


Route::get('/email/{email}', function ($email) {
    Mail::to($email)->send(new WelcomeMail());
    return Redirect::to('user')->with('success','EMAIL SENT!!!'); 
});


Auth::routes();

Route::resource('film', 'FilmController')->middleware('auth');

Route::get('/film/restore/{id}',['uses' => 'FilmController@restore',
      'as' => 'film.restore']);

Route::get('/actor/restore/{id}',['uses' => 'ActorController@restore',
      'as' => 'actor.restore']);

Route::resource('rating', 'RatingController')->middleware('auth');

Route::resource('genre', 'GenreController')->middleware('auth');

Route::resource('user', 'UserController')->middleware('auth');

Route::resource('actor', 'ActorController')->middleware('auth');

Route::resource('producer', 'ProducerController')->middleware('auth');

Route::resource('role', 'RoleController')->middleware('auth');

Route::post('/sendemail/send', 'SendEmailController@send');

Route::get('/profanity/test', function () {
    $words = 'My bad word bitch fucker blowjob arschlecker gagu potaena ';

    $display = Profanity::blocker($words)->filter();

    return $display;
 });