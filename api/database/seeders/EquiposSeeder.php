<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EquiposSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('equipos')->insert([
            ['nombre'=>'PaperRex','acronimo'=>'PX','entrenador'=>'alecks',],
            ['nombre'=>'Loud','acronimo'=>'Loud','entrenador'=>'Peu', ],
            ['nombre'=>'Evil Geniuses ','acronimo'=>'EG','entrenador'=>'pho',],
            ['nombre'=>'Gamerlegion','acronimo'=>'GL','entrenador'=>'-',],
            ['nombre'=>'Aftermath','acronimo'=>'aM','entrenador'=>'-',],
            ['nombre'=>'WeSports','acronimo'=>'weS','entrenador'=>'-',],
            ['nombre'=>'T1','acronimo'=>'T1','entrenador'=>'"KkOma',],
            ['nombre'=>'Generation Gaming','acronimo'=>'Gen.G','entrenador'=>'Helper',],
            ['nombre'=>'Fnatic','acronimo'=>'Fnatic','entrenador'=>'Nightshare',],
        ]);
    }
}
