<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class JugadoresSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('jugadores')->insert([
            ['nickname'=>'Jinggg','pais'=>'Singapur', 'id_equipo'=>1,],
            ['nickname'=>'something','pais'=>'Rusia', 'id_equipo'=>1,],
            ['nickname'=>'f0rsakeN','pais'=>'Indonesia', 'id_equipo'=>1,],
            ['nickname'=>'mindfreak ','pais'=>'Indonesia', 'id_equipo'=>1,],
            ['nickname'=>'D4v41','pais'=>'Malasia', 'id_equipo'=>1,],
            ['nickname'=>'Saadhak','pais'=>'Argentina', 'id_equipo'=>2,],
            ['nickname'=>'cauanzin','pais'=>'Brazil', 'id_equipo'=>2,],
            ['nickname'=>'tuyz','pais'=>'Brazil', 'id_equipo'=>2,],
            ['nickname'=>'Less','pais'=>'Brazil', 'id_equipo'=>2,],
            ['nickname'=>'stk','pais'=>'Brazil', 'id_equipo'=>2,],
            ['nickname'=>'Apotheon','pais'=>'Canada', 'id_equipo'=>3,],
            ['nickname'=>'Derrek','pais'=>'EE.UU.', 'id_equipo'=>3,],
            ['nickname'=>'NaturE','pais'=>'EE.UU', 'id_equipo'=>3,],
            ['nickname'=>'supamen','pais'=>'EE.UU', 'id_equipo'=>3,],
            ['nickname'=>'Jawgemo','pais'=>'Cambodia', 'id_equipo'=>3,],
            ['nickname'=>'Tatoh','pais'=>'españa', 'id_equipo'=>4,],
        ]);
    }
}
