<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Name_Company extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình tên công ty',
            'descrition'=>'Cấu hình tên công ty'
        ];
    }
    public function onRun(){
        $this->configNameCompany=$this->loadNameAddressCompany();
    }
    public function loadNameAddressCompany(){
        return Config::first()->config_name_company;
    }
    public $configNameCompany;
}
