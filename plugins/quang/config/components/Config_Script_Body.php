<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Script_Body extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình script body',
            'descrition'=>'Cấu hình script body'
        ];
    }
    public function onRun(){
        $this->configScriptBody=$this->loadConfigScriptBody();
    }
    public function loadConfigScriptBody(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_script_body;
    }
    public $configScriptBody;
}
