<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Quang\Post\Models\Posts;

class Post_Detail extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Chi Tiết Bài Viết',
            'description' => 'Chi Tiết Bài Viết'
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

            ],
        ];
    }


    public function loadPostDetail()
    {

        $query=Posts::where('slug','=',$this->property('identifierValue'))->first();
        $this->page->title = $query->title;
        $this->page->meta_title = $this->page->meta_title.' - '.$query->title;
        $this->page->og_image = $query->img_primary;
        if ($this->property('results') > 0) {
            $query = $query->take($this->property('results'));
        }
        return $query;
    }
    public function onRun()
    {
        $this->post = $this->loadPostDetail();
    }
    public $post;

}