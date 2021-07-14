<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController;

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

Route::get('sample', [TestController::class, 'sample']);

// Route Middleware
//Route::get('sample', [TestController::class, 'sample'])->middleware('api');

// Group Middleware
/*Route::group(['middleware' => ['mymiddleware']], function(){

});*/

/*Route::middleware('first', 'second')->group(function(){
    
});*/
// Route Group & Route Prefix

/*Route::prefix('admin')->group(function(){
    Route::get('create-user', '');
});*/

Route::group(['prefix'=> 'admin'],function(){
    //..
});