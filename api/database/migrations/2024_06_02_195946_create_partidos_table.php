<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('partidos', function (Blueprint $table) {
            $table->id();
            $table->date('fecha');
            $table->boolean('jugado');
            $table->unsignedBigInteger('id_equipo1');
            $table->unsignedBigInteger('id_equipo2');
            $table->unsignedBigInteger('id_campeonato');
            $table->foreign('id_campeonato')->references('id')->on('campeonatos');
            #$table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('partidos');
    }
};
