<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ReglasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('reglas')->insert([
            ['campeonato_id' => 1, 'detalle' => 'Jugador que use sw de terceros será sancionado con una multa y expulsado del campeonato', 'nombre' => 'Sw de terceros', ],
            ['campeonato_id' => 1, 'detalle' => 'Jugador será sancionado siendo expulsado del campeonato', 'nombre' => 'Conducta Anti-deportiva', ],
        ]);
    }
}
