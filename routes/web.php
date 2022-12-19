<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\DowntimeController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\PencarianController;
use App\Http\Controllers\SuhukelembapanController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\UserController;
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

Auth::routes();

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/barang', [BarangController::class, 'index'])->name('barang');

Route::get('/pelapor', [DowntimeController::class, 'index'])->name('pelapor');
Route::post('/pelapor/store', [DowntimeController::class, 'store'])->name('store-pelapor');
// Route::get('/suhu/{id}/edit', [SuhukelembapanController::class, 'edit'])->name('edit-suhu');
// Route::put('/suhu/{id}/update', [SuhukelembapanController::class, 'update'])->name('update-suhu');
// Route::delete('/suhu/{id}/delete', [SuhukelembapanController::class, 'delete'])->name('delete-suhu');

Route::get('/suhu', [SuhukelembapanController::class, 'index'])->name('suhu');
Route::post('/suhu/store', [SuhukelembapanController::class, 'store'])->name('store-suhu');
Route::get('/suhu/{id}/edit', [SuhukelembapanController::class, 'edit'])->name('edit-suhu');
Route::put('/suhu/{id}/update', [SuhukelembapanController::class, 'update'])->name('update-suhu');
Route::delete('/suhu/{id}/delete', [SuhukelembapanController::class, 'delete'])->name('delete-suhu');

Route::get('/kategori', [KategoriController::class, 'index'])->name('kategori');
Route::post('/kategori/store', [KategoriController::class, 'store'])->name('store-kategori');
Route::get('/kategori/{id}/edit', [KategoriController::class, 'edit'])->name('edit-kategori');
Route::put('/kategori/{id}/update', [KategoriController::class, 'update'])->name('update-kategori');
Route::delete('/kategori/{id}/delete', [KategoriController::class, 'delete'])->name('delete-kategori');

Route::get('/unit', [UnitController::class, 'index'])->name('unit');
Route::post('/unit/store', [UnitController::class, 'store'])->name('store-unit');
Route::get('/unit/{id}/edit', [UnitController::class, 'edit'])->name('edit-unit');
Route::put('/unit/{id}/update', [UnitController::class, 'update'])->name('update-unit');
Route::delete('/unit/{id}/delete', [UnitController::class, 'delete'])->name('delete-unit');

Route::get('/barang', [BarangController::class, 'index'])->name('barang');
Route::post('/barang/store', [BarangController::class, 'store'])->name('store-barang');
Route::get('/barang/{id}/edit', [BarangController::class, 'edit'])->name('edit-barang');
Route::put('/barang/{id}/update', [BarangController::class, 'update'])->name('update-barang');
Route::delete('/barang/{id}/delete', [BarangController::class, 'delete'])->name('delete-barang');

Route::get('/pencarian', [PencarianController::class, 'index'])->name('pencarian');

Route::get('/user', [UserController::class, 'index'])->name('user');
