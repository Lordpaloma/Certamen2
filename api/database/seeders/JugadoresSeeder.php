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
            ['nickname'=>'Jinggg','pais'=>'Singapur', 'equipo_id'=>1,],
            ['nickname'=>'something','pais'=>'Rusia', 'equipo_id'=>1,],
            ['nickname'=>'f0rsakeN','pais'=>'Indonesia', 'equipo_id'=>1,],
            ['nickname'=>'mindfreak ','pais'=>'Indonesia', 'equipo_id'=>1,],
            ['nickname'=>'D4v41','pais'=>'Malasia', 'equipo_id'=>1,],
            ['nickname'=>'Saadhak','pais'=>'Argentina', 'equipo_id'=>2,],
            ['nickname'=>'cauanzin','pais'=>'Brazil', 'equipo_id'=>2,],
            ['nickname'=>'tuyz','pais'=>'Brazil', 'equipo_id'=>2,],
            ['nickname'=>'Less','pais'=>'Brazil', 'equipo_id'=>2,],
            ['nickname'=>'stk','pais'=>'Brazil', 'equipo_id'=>2,],
            ['nickname'=>'Apotheon','pais'=>'Canada', 'equipo_id'=>3,],
            ['nickname'=>'Derrek','pais'=>'EE.UU.', 'equipo_id'=>3,],
            ['nickname'=>'NaturE','pais'=>'EE.UU', 'equipo_id'=>3,],
            ['nickname'=>'supamen','pais'=>'EE.UU', 'equipo_id'=>3,],
            ['nickname'=>'Jawgemo','pais'=>'Cambodia', 'equipo_id'=>3,],
            ['nickname'=>'Tatoh','pais'=>'españa', 'equipo_id'=>4,],
        ]);
    }
}
