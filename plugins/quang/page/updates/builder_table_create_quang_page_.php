<?php namespace Quang\Page\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangPage extends Migration
{
    public function up()
    {
        Schema::create('quang_page_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->text('description')->nullable();
            $table->text('content')->nullable();
            $table->string('img_primary')->nullable();
            $table->boolean('is_active')->default(0);
            $table->string('slug')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_page_');
    }
}
