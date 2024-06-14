<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;


class CampeonatosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('campeonatos')->insert([
            ['nombre'=>'Red Bull Wololo: Legacy','juego'=>'Age of empires 2','pais'=>'Alemania',  'fecha'=> ('2024-10-21'),],
            ['nombre'=>'VCT Latam','juego'=>'Valorant','pais'=>'Argentina', 'fecha'=> ('2024-02-20')],
            ['nombre'=>'World Champions ','juego'=>'LOL','pais'=>'Berlin',  'fecha'=>('2024-11-02')]
        ]);
    }
}
