<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Script_Fanpage extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình script fanpage',
            'descrition'=>'Cấu hình script fanpage'
        ];
    }
    public function onRun(){
        $this->configScriptFanpage=$this->loadConfigScriptFanpage();
    }
    public function loadConfigScriptFanpage(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_script_fanpage;
    }
    public $configScriptFanpage;
}
