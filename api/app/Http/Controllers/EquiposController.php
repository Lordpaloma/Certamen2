<?php

namespace App\Http\Controllers;

use App\Http\Requests\EquipoRequest;
use App\Models\Equipo;
use Illuminate\Http\Request;

class EquiposController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $equipos= Equipo::all()->load('jugadores')->makeHidden('jugadores_id');
        return $equipos;
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
    public function store(EquipoRequest $request)
    {
        $equipo = new Equipo();
        $equipo-> nombre = $request->nombre;
        $equipo-> acronimo = $request->acronimo;
        $equipo-> entrenador = $request->entrenador;
        $equipo-> save();
        return $equipo;
    }

    /**
     * Display the specified resource.
     */
    public function show(Equipo $equipo)
    {
        return $equipo;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Equipo $equipo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Equipo $equipo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Equipo $equipo)
    {
        //
    }
}
