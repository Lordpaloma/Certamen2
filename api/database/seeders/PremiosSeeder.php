<?php


namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PremiosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('premios')->insert([
            ['campeonato_id' => 1, 'detalle' => 'Primer Lugar', 'lugar' => 1, 'monto' => 2000],
            ['campeonato_id' => 1, 'detalle' => 'Segundo Lugar', 'lugar' => 2, 'monto' => 1000],
        ]);
    }
}
