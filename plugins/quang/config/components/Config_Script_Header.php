<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Script_Header extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình script header',
            'descrition'=>'Cấu hình script header'
        ];
    }
    public function onRun(){
        $this->configScriptHeader=$this->loadConfigScriptHeader();
    }
    public function loadConfigScriptHeader(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_script_header;
    }
    public $configScriptHeader;
}
