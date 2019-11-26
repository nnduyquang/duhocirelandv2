<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Cms\Classes\Page;
use Quang\Post\Models\Category;

class Category_Child extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Danh Mục Con',
            'description' => 'Hiển thị danh mục con theo cha'
        ];
    }

    public function defineProperties()
    {
        return [
            'results' => [
                'title' => 'Số lượng danh mục hiển thị',
                'description' => 'Hiển thị số lượng danh mục',
                'default' => 0,
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'Chỉ nhập số'
            ],
            'categories' => [
                'title' => 'Chọn danh mục gốc',
                'description' => 'Chọn danh mục gốc',
                'type' => 'dropdown'

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
            'categoryPage' => [
                'title' => 'quang.post::lang.settings.posts_category',
                'description' => 'quang.post::lang.settings.posts_category_description',
                'type' => 'dropdown',
                'default' => 'blog/category',
                'group' => 'quang.post::lang.settings.group_links',
            ],
            'postPage' => [
                'title' => 'rainlab.blog::lang.settings.posts_post',
                'description' => 'quang.post::lang.settings.posts_post_description',
                'type' => 'dropdown',
                'default' => 'blog/post',
                'group' => 'quang.post::lang.settings.group_links',
            ],
        ];
    }

    public function getCategoriesOptions()
    {
        $categoties = Category::all()->lists('title', 'slug');
        return $categoties;
    }

    public function getCategoryPageOptions()
    {
        return Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }

    public function getPostPageOptions()
    {
        return Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }

    protected function prepareVars()
    {
        $this->postPage = $this->page['postPage'] = $this->property('postPage');
        $this->categoryPage = $this->page['categoryPage'] = $this->property('categoryPage');
    }

    public function loadCategoryChild()
    {
        $query = Category::where('slug', $this->property('categories'))->first()->children()->get();
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
        $blogPostComponent = $this->getComponent('blogPost', $this->postPage);
        $blogPostsComponent = $this->getComponent('blogPosts', $this->categoryPage);
        $query->each(function ($post) use ($blogPostComponent, $blogPostsComponent) {
            $post->setUrl(
                $this->postPage,
                $this->controller,
                [
                    'slug' => $this->urlProperty($blogPostComponent, 'slug')
                ]
            );


//            $post->category->each(function ($category) use ($blogPostsComponent) {
//                $category->setUrl(
//                    $this->categoryPage,
//                    $this->controller,
//                    [
//                        'slug' => $this->urlProperty($blogPostsComponent, 'categoryFilter')
//                    ]
//                );
//            });
        });
        return $query;
    }

    public function onRun()
    {
        $this->prepareVars();
        $this->categoriesChild = $this->loadCategoryChild();
    }

    public $categoriesChild;
    public $postPage;
    public $categoryPage;
}