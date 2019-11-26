<?php namespace Quang\Post;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Post\Components\Post_Other' => 'posts_other',
            'Quang\Post\Components\Post_Detail' => 'post_detail',
            'Quang\Post\Components\Post_All' => 'post_all',
            'Quang\Post\Components\Category_Child' => 'categories_child',
            'Quang\Post\Components\Category_Post' => 'categories_post',
            'Quang\Post\Components\Category_Detail_URL' => 'category_detail_url',
            'Quang\Post\Components\Category_Detail_Title' => 'category_detail_title',
        ];
    }

    public function registerSettings()
    {
    }
}
