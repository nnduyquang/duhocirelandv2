<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Phone extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình số điện thoại',
            'descrition'=>'Cấu hình số điện thoại'
        ];
    }
    public function onRun(){
        $this->configPhone=$this->loadConfigPhone();
    }
    public function loadConfigPhone(){
        return Config::first()->config_phone;
    }
    public $configPhone;
}
