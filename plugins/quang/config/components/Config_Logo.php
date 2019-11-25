<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Logo extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình Logo',
            'descrition'=>'Cấu hình Logo'
        ];
    }
    public function defineProperties()
    {
        return [
            'logoType' => [
                'title' => 'Chọn loại logo',
                'description' => 'Chọn loại logo',
                'type' => 'dropdown'

            ],
        ];
    }
    public function getLogoTypeOptions()
    {
        $logoType = array_keys(Config::first()->config_logo[0]);
        return $logoType;
    }
    public function onRun(){
        $this->configLogo=$this->loadConfigLogo();
    }
    public function loadConfigLogo(){
        $key=$this->property('logoType');
        return array_values(Config::first()->config_logo[0])[$key];
    }
    public $configLogo;
}
