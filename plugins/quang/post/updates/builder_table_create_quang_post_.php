<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangPost extends Migration
{
    public function up()
    {
        Schema::create('quang_post_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->text('description')->nullable();
            $table->text('content');
            $table->boolean('is_active')->default(0);
            $table->string('slug')->nullable();
            $table->string('img_primary')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_post_');
    }
}
