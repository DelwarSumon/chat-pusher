<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/load-latest-messages', [App\Http\Controllers\MessagesController::class, 'getLoadLatestMessages']);
Route::post('/send', [App\Http\Controllers\MessagesController::class, 'postSendMessage']);
Route::get('/fetch-old-messages', [App\Http\Controllers\MessagesController::class, 'getOldMessages']);



Route::get('/just_form_list', [App\Http\Controllers\HomeController::class, 'just_form_list']);

Route::get('/just_form', [App\Http\Controllers\HomeController::class, 'just_form']);
Route::post('/just_form', [App\Http\Controllers\HomeController::class, 'just_form_save']);

Route::get('/just_form_edit/{id}', [App\Http\Controllers\HomeController::class, 'just_form_edit']);
Route::post('/just_form_edit/{id}', [App\Http\Controllers\HomeController::class, 'just_form_update']);

Route::get('/just_form_delete/{id}', [App\Http\Controllers\HomeController::class, 'just_form_delete']);


Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('config:cache');
    // return what you want
});
