<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Sliders extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'List Slider',
            'descrition'=>'Danh Sách Slider'
        ];
    }
    public function onRun(){
        $this->sliders=$this->loadSlider();
    }
    public function loadSlider(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_slider;
    }
    public $sliders;
}
