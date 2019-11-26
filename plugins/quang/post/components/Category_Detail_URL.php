<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Cms\Classes\Page;
use Quang\Post\Models\Category;

class Category_Detail_URL extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Chi tiết danh mục theo URL Slug',
            'description' => 'Hiển thị chi tiết danh mục theo URL Slug'
        ];
    }

    public function defineProperties()
    {
        return [
            'identifierValue' => [
                'title' => 'Chọn định danh',
                'description' => 'Chọn định danh',
                'type'        => 'string',
                'default'     => '{{ :slug }}',
                'validation'  => [
                    'required' => [
                        'message' => 'Vui lòng nhập'
                    ]
                ]

            ],
        ];
    }

    public function loadCategory()
    {
        $query = Category::where('slug', $this->property('identifierValue'))->first();
        $this->page->title = $query->title;
        $this->page->meta_title = $this->page->meta_title.' - '.$query->title;
        $this->page->meta_description = $query->description;
        $this->page->og_image = $query->img_primary;
        return $query;
    }

    public function onRun()
    {
        $this->category_detail_url = $this->loadCategory();
    }

    public $category_detail_url;
}