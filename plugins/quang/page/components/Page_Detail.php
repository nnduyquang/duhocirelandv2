<?php namespace Quang\Page\Components;

use Quang\Page\Classes\ComponentAbstract;
use Quang\Page\Models\Page;

class Page_Detail extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Chi Tiết Trang',
            'description' => 'Chi Tiết Trang'
        ];
    }
    public function defineProperties()
    {
        return [
            'pages' => [
                'title' => 'Chọn trang',
                'description' => 'Chọn trang',
                'type' => 'dropdown'

            ],
        ];
    }
    public function getPagesOptions()
    {
        $pages = Page::all()->lists('title', 'slug');
        return $pages;
    }


    public function loadPageDetail()
    {

        $query=Page::where('slug','=',$this->property('pages'))->first();
        return $query;
    }
    public function onRun()
    {
        $this->pageDetail = $this->loadPageDetail();
    }
    public $pageDetail;

}