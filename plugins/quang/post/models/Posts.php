<?php namespace Quang\Post\Models;

use Model;

/**
 * Model
 */
class Posts extends Model
{
    use \October\Rain\Database\Traits\Validation;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_post_';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
    public $implement = [
        'RainLab.Translate.Behaviors.TranslatableModel',
        'Vdomah.TranslateTabs.Behaviors.TranslateTabbable',
    ];


    public $translatable = ['title','slug'];

    /* Relations */
    public $belongsToMany = [
        'category' => [
            'Quang\Post\Models\Category',
            'table'=>'quang_post_post_category',
            'order'=>'title'
        ]
    ];
    public function setUrl($pageName, $controller, array $urlParams = array())
    {
        $params = [
            array_get($urlParams, 'id', 'id')   => $this->id,
            array_get($urlParams, 'slug', 'slug') => $this->slug,
        ];

        $params['category'] = $this->category->count() ? $this->category->first()->slug : null;

        // Expose published year, month and day as URL parameters.
        if ($this->published) {
            $params[array_get($urlParams, 'year', 'year')] = $this->published_at->format('Y');
            $params[array_get($urlParams, 'month', 'month')] = $this->published_at->format('m');
            $params[array_get($urlParams, 'day', 'day')] = $this->published_at->format('d');
        }

        return $this->url = $controller->pageUrl($pageName, $params);
    }

}
