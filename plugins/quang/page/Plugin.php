<?php namespace Quang\Page;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Page\Components\Page_Detail' => 'page_detail',
        ];
    }

    public function registerSettings()
    {
    }
}
