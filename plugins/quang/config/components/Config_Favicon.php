<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Favicon extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình Favicon',
            'descrition'=>'Cấu hình Favicon'
        ];
    }
    public function onRun(){
        $this->configFavicon=$this->loadConfigFavicon();
    }
    public function loadConfigFavicon(){
        return Config::first()->config_favicon;
    }
    public $configFavicon;
}
