<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use Illuminate\Support\Facades\Session;
use App\Models\User;
use App\Http\Controllers\ProductController;

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

// Route::get('/', function () {
//     $data = array();
//     if (Session::has('loginId')) {
//         $data = User::where('id', '=', Session::get('loginId'))->first();
//     }
//     return view('welcome', compact('data'));
// });
Route::get('/', [ProductController::class, 'home']);
Route::get('/login', [CustomAuthController::class, 'login'])->middleware('alreadyLoggedIn');
Route::get('/registration', [CustomAuthController::class, 'registration'])->middleware('alreadyLoggedIn');
Route::post('/register-user', [CustomAuthController::class, 'registerUser'])->name('register-user');
Route::post('/login-user', [CustomAuthController::class, 'loginUser'])->name('login-user');
Route::get('/dashboard', [CustomAuthController::class, 'dashboard'])->middleware('isLoggedIn');
Route::get('/logout', [CustomAuthController::class, 'logout']);
Route::resource('/product', ProductController::class)->middleware('isLoggedIn');
