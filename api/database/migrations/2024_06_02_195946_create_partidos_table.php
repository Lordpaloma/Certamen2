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
<<<<<<< Updated upstream
            $table->string('fecha',12);
<<<<<<< HEAD
            $table->boolean('jugado');
=======
            $table->string('fecha');
>>>>>>> Stashed changes
=======
>>>>>>> a7c4dacf6ac7dcce23056c9ba50d583f7949daea
            $table->unsignedBigInteger('campeonato_id');
            $table->foreign('campeonato_id')->references('id')->on('campeonatos');
            
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
