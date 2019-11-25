<?php namespace Quang\Config\Models;

use Model;

/**
 * Model
 */
class Config extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_config_';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
    protected $jsonable=['config_slider','config_seo','config_logo','config_hotline'];

}
