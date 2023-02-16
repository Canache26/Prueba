<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(App\User::class,5)->create();
        factory(App\Model\Orders::class,50)->create();
        factory(App\Model\Orders_Details::class,300)->create();
    }
}
