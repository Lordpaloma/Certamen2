<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
<<<<<<< HEAD
use Carbon\Carbon;
=======

>>>>>>> a7c4dacf6ac7dcce23056c9ba50d583f7949daea
class PartidosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
<<<<<<< HEAD
        DB::table('equipos')->insert([
            ['fecha'=>Carbon::create('2024', '10', '21'),'campeonato_id'=>1],
            ['fecha'=>Carbon::create('2024', '10', '21'),'campeonato_id'=>1],
            ['fecha'=>Carbon::create('2024', '10', '21'),'campeonato_id'=>1,],
        ]);
=======
        DB::table('partidos')->insert([
            ['campeonato_id' => 1, 'fecha' => '2024-10-21'],
        ]);
    }
>>>>>>> a7c4dacf6ac7dcce23056c9ba50d583f7949daea
}
}