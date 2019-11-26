<?php namespace Quang\Post\Models;

use Model;


/**
 * Model
 */
class Category extends Model
{
    use \October\Rain\Database\Traits\Validation;
    use \October\Rain\Database\Traits\NestedTree;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_post_category';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
    public $belongsToMany = [
        'post' => [
            'Quang\Post\Models\Posts',
            'table'=>'quang_post_post_category',
        ]
    ];
    protected $jsonable=['photos'];

    public $hasMany=[
        'children'=>[
            'Quang\Post\Models\Category',
            'table'=>'quang_post_category',
            'key'=>'id',
            'otherKey'=>'parent_id'
        ]
    ];

    public function setUrl($pageName, $controller, array $urlParams = array())
    {
        $params = [
            array_get($urlParams, 'id', 'id')   => $this->id,
            array_get($urlParams, 'slug', 'slug')  => $this->slug,
        ];

        return $this->url = $controller->pageUrl($pageName, $params, false);
    }
}
