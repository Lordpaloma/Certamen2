<?php

namespace App\Http\Controllers;

use App\Http\Requests\PartidoRequest;
use App\Models\Partido;
use Illuminate\Http\Request;

class PartidosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $partido = Partido::all();
        return $partido;
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
    public function store(PartidoRequest $request)
    {
        $partidos = new Partido();
        $partidos-> fecha = $request-> fecha;
        $partidos-> campeonato_id = $request->campeonato_id;
        $partidos->save();
        return $partidos;
    }

    /**
     * Display the specified resource.
     */
    public function show(Partido $partido)
    {
        return $partido;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Partido $partido)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Partido $partido)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Partido $partido)
    {
        //
    }
}
