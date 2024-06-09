<?php

namespace App\Http\Controllers;

use App\Models\Campeonato;
use Illuminate\Http\Request;

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
        $equipo= new Equipo();
        $equipo->nombre = $request->nombre;
        $equipo->save();
        return $equipo;
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
}
