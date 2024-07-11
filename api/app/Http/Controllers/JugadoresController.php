<?php

namespace App\Http\Controllers;

use App\Http\Requests\JugadorRequest;
use App\Models\Jugador;
use Illuminate\Http\Request;

class JugadoresController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $jugadores= Jugador::Orderby('nickname')->get();
        return $jugadores;
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
    public function store(JugadorRequest $request)
    {
        $jugadores= new Jugador();
        $jugadores->nickname=$request->nickname;
        $jugadores->pais=$request->pais;
        $jugadores->equipo_id=$request->equipo_id;
        $jugadores->save();
        return $jugadores;
    }

    /**
     * Display the specified resource.
     */
    public function show(Jugador $jugador)
    {
        return $jugador;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Jugador $jugadores)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Jugador $jugadores)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Jugador $jugadores)
    {
        //
    }
}
