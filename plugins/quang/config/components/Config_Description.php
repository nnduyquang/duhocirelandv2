<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Description extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình mô tả',
            'descrition'=>'Cấu hình mô tả'
        ];
    }
    public function onRun(){
        $this->configDescriptionCompany=$this->loadConfigDescription();
    }
    public function loadConfigDescription(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_description_company;
    }
    public $configDescriptionCompany;
}
