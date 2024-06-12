<?php

namespace App\Http\Controllers;

use App\Models\Premios;
use Illuminate\Http\Request;

class PremiosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $premios= Premios::all();
        return $premios;
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
    public function show(Premios $premios)
    {
        return $premios;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Premios $premios)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Premios $premios)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Premios $premios)
    {
        //
    }
    public function scopePorCampeonato($query, $idCampeonato)
{
    return $query->where('campeonato_id', $idCampeonato);
}
}
