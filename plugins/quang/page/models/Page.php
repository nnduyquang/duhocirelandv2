<?php namespace Quang\Page\Models;

use Model;

/**
 * Model
 */
class Page extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_page_';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
