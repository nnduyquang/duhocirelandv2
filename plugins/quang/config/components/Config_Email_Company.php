<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Email_Company extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình email công ty',
            'descrition'=>'Cấu hình email công ty'
        ];
    }
    public function onRun(){
        $this->configEmailCompany=$this->loadConfigEmailCompany();
    }
    public function loadConfigEmailCompany(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_email_company;
    }
    public $configEmailCompany;
}
