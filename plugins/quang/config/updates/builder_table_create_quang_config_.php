<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangConfig extends Migration
{
    public function up()
    {
        Schema::create('quang_config_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('id');
            $table->text('config_logo')->nullable();
            $table->string('config_name_company')->nullable();
            $table->text('config_address_company')->nullable();
            $table->text('config_script_header')->nullable();
            $table->text('config_contact_detail')->nullable();
            $table->string('config_email_company')->nullable();
            $table->text('config_slider')->nullable();
            $table->text('config_script_fanpage')->nullable();
            $table->text('config_description_company')->nullable();
            $table->text('config_script_body')->nullable();
            $table->string('config_phone')->nullable();
            $table->text('config_seo')->nullable();
            $table->string('config_favicon')->nullable();
            $table->text('config_hotline')->nullable();
            $table->primary(['id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_config_');
    }
}
