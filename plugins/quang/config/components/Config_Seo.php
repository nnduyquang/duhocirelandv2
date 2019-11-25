<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Seo extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình SEO',
            'descrition'=>'Cấu hình SEO'
        ];
    }
    public function defineProperties()
    {
        return [
            'seoType' => [
                'title' => 'Chọn loại SEO',
                'description' => 'Chọn loại SEO',
                'type' => 'dropdown'

            ],
        ];
    }
    public function getSeoTypeOptions()
    {
//        $seoType = array_flip(Config::first()->config_seo[0]);
        $seoType = array_keys(Config::first()->config_seo[0]);
        return $seoType;
    }
    public function onRun(){
        $this->configSeoContent=$this->loadConfigSeo();
    }
    public function loadConfigSeo(){
        $key=$this->property('seoType');
        return array_values(Config::first()->config_seo[0])[$key];
    }
    public $configSeoContent;
}
