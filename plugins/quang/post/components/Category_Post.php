<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Quang\Post\Models\Category;

class Category_Post extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Bài Viết Theo URL Danh Mục',
            'description' => 'Hiển thị bài viết theo url danh mục'
        ];
    }

    public function defineProperties()
    {
        return [
            'results' => [
                'title' => 'Số lượng bài viết hiển thị',
                'description' => 'Hiển thị số lượng bài viết',
                'default' => 0,
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'Chỉ nhập số'
            ],
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

            ]
        ];
    }

    public function getCategoriesOptions()
    {
        $categoties = Category::all()->lists('title', 'slug');
        return $categoties;
    }


    public function loadCategoryPost()
    {
        $query = Category::where('slug', $this->property('identifierValue'))->first()->post()->where('is_active',1)->get();

        if ($this->property('results') > 0) {
            $query = $query->take($this->property('results'));
        }
        foreach ($query as $key=>$item){
            if(strcmp($item->slug,$this->property('identifierValue'))==0){
                $item->is_active=1;
            }else{
                $item->is_active=0;
            }
        }

        return $query;
    }

    public function onRun()
    {
        $this->categoriesPost = $this->loadCategoryPost();
    }

    public $categoriesPost;

}