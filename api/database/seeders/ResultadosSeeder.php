<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ResultadosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('resultados')->insert([
            ['equipo_id'=>1, 'partido_id'=>1, 'detalle'=>'1-0' ]
        ]);
    }
}
