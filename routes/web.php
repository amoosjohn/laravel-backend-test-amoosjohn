<?php

use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ImTheBugController;
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
Route::get('/can-you-see-me', [ImTheBugController::class, 'permissionBug'])->name('can-you-see-me');
Route::get('/i-found-a-bug', [ImTheBugController::class, 'bugHouse'])->name('i-found-a-bug');
Route::get('/upload-a-file', [ImTheBugController::class, 'uploadFileView'])->name('upload-a-file');
Route::post('/upload-a-file', [ImTheBugController::class, 'uploadFile']);

Route::apiResource('company', CompanyController::class);
