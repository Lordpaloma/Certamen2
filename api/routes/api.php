<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\http\Controllers\CampeonatosController;
use App\http\Controllers\EquiposController;
use App\http\Controllers\PartidosController;
use App\http\Controllers\PremiosController;
use App\http\Controllers\ReglasController;
use App\http\Controllers\ResultadoController;
use App\http\Controllers\JugadoresController;

//Route::get('/user', function (Request $request) {
//    return $request->user();
//})->middleware('auth:sanctum');

Route::resource('/equipos',EquiposController::class);
Route::resource('/Campeonatos',CampeonatosController::class);
Route::resource('/Partidos',PartidosController::class);
Route::resource('/Premios',PremiosController::class);
Route::resource('/Reglas',ReglasController::class);
Route::resource('/Resultado',ResultadoController::class);
Route::resource('/Jugadores', JugadoresController::class);
Route::get('/Campeonatos/{id}', [CampeonatosController::class, 'obtenerDatosCampeonato']);