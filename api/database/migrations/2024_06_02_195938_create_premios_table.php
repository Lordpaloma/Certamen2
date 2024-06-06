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
        Schema::create('premios', function (Blueprint $table) {
            $table->id();
            $table->tinyInteger('lugar');
            $table->integer('monto');
            $table->string('detalle',50);
            $table->unsignedBigInteger('campeonatos_id');
            $table->foreign('campeonatos_id')->references('id')->on('campeonatos');
            #$table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('premios');
    }
};
