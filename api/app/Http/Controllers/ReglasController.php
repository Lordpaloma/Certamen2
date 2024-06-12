<?php

namespace App\Http\Controllers;

use App\Models\Reglas;
use Illuminate\Http\Request;

class ReglasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reglas = Reglas::all();
        return $reglas;
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Reglas $reglas)
    {
        return $reglas;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Reglas $reglas)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reglas $reglas)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reglas $reglas)
    {
        //
    }
    public function scopePorCampeonato($query, $idCampeonato)
    {
        return $query->where('campeonato_id', $idCampeonato);
    }
}
