<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Cms\Classes\Page;
use Quang\Post\Models\Category;

class Category_Detail_Title extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Chi tiết danh mục theo Title',
            'description' => 'Hiển thị chi tiết danh mục theo Title'
        ];
    }

    public function defineProperties()
    {
        return [
            'categories' => [
                'title' => 'Chọn loại danh mục',
                'description' => 'Lấy thông tin danh mục',
                'type' => 'dropdown'

            ],
        ];
    }
    public function getCategoriesOptions()
    {
        $categoties = Category::all()->lists('title', 'slug');
        return $categoties;
    }

    public function loadCategory()
    {
        $query = Category::where('slug', $this->property('categories'))->first();
        return $query;
    }

    public function onRun()
    {
        $this->category_detail_title = $this->loadCategory();
    }

    public $category_detail_title;
}