<?php namespace Quang\Config;


use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return[
            'Quang\Config\Components\Sliders'=>'sliders',
            'Quang\Config\Components\Config_Description'=>'config_description',
            'Quang\Config\Components\Config_Script_Fanpage'=>'config_script_fanpage',
            'Quang\Config\Components\Config_Address_Company'=>'config_address_company',
            'Quang\Config\Components\Config_Email_Company'=>'config_email_company',
            'Quang\Config\Components\Config_Name_Company'=>'config_name_company',
            'Quang\Config\Components\Config_Hotline'=>'config_hotline',
            'Quang\Config\Components\Config_Phone'=>'config_phone',
            'Quang\Config\Components\Config_Script_Header'=>'config_script_header',
            'Quang\Config\Components\Config_Script_Body'=>'config_script_body',
            'Quang\Config\Components\Config_Seo'=>'config_seo_content',
            'Quang\Config\Components\Config_Favicon'=>'config_favicon',
            'Quang\Config\Components\Config_Logo'=>'config_logo',
        ];
    }

    public function registerSettings()
    {
    }
}
