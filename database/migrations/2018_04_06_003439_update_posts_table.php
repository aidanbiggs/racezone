<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('posts', function ($table) {
            $table->string('racer_name');
            $table->string('race_time');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
    
    Schema::table('posts',function($table){
        $table->dropColumn('racer_name');
        $table->dropColumn('race_time');

    });

    }
}
