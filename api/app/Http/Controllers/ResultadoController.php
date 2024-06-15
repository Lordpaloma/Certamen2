<?php

namespace App\Http\Controllers;

use App\Models\Resultado;
use Illuminate\Http\Request;

class ResultadoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $resultados = Resultado::all()->load('Equipo')->makeVisible('equipo_id');
        return $resultados;
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
    public function show(Resultado $resultado)
    {
        return $resultado;  
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Resultado $resultado)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Resultado $resultado)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Resultado $resultado)
    {
        //
    }
}
