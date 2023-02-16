<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Orders_Details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('articulo')->unsigned()->index();
            $table->foreign('cantidad')->references('id')->on('articulo')->onDelete('cascade');
            $table->integer('precio');
            $table->text('total');
            $table->integer('id_orders');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Orders_Details');
    }
}
