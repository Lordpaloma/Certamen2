<?php

namespace App\Http\Controllers;

use App\Http\Requests\CampeonatoRequest;
use App\Models\Campeonato;
use Illuminate\Http\Request;
use App\Models\Reglas;
use App\Models\Premios;

class CampeonatosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $campeonato = Campeonato::all();
        return $campeonato;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CampeonatoRequest $request)
    {
        $campeonato = new Campeonato();
        $campeonato->nombre = $request->nombre;
        $campeonato->juego = $request->juego;
        $campeonato->pais = $request->pais;
        $campeonato->estado = $request->estado;
        $campeonato->fecha = $request->fecha;
        $campeonato->save();

        return response($campeonato);
    }

    /**
     * Display the specified resource.
     */
    public function show(Campeonato $campeonato)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Campeonato $campeonato)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Campeonato $campeonato)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Campeonato $campeonato)
    {
        //
    }
    public function obtenerDatosCampeonato($idCampeonato)
    {
        $campeonato = Campeonato::find($idCampeonato);
        if (!$campeonato) {
            return response()->json(['error' => 'Campeonato no encontrado'], 404);
        }

        $reglas = Reglas::where('campeonato_id', $idCampeonato)->get();
        $premios = Premios::where('campeonato_id', $idCampeonato)->get();

        return response()->json(['campeonato' => $campeonato, 'reglas' => $reglas, 'premios' => $premios]);
    }
    
}
