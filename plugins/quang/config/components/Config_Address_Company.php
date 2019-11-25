<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Address_Company extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình địa chỉ',
            'descrition'=>'Cấu hình địa chỉ'
        ];
    }
    public function onRun(){
        $this->configAddressCompany=$this->loadConfigAddressCompany();
    }
    public function loadConfigAddressCompany(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_address_company;
    }
    public $configAddressCompany;
}
