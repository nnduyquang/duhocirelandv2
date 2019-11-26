<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangPostPostCategory extends Migration
{
    public function up()
    {
        Schema::create('quang_post_post_category', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('posts_id');
            $table->integer('category_id');
            $table->primary(['posts_id','category_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_post_post_category');
    }
}
