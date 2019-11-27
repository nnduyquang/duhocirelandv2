<?php namespace Quang\Contact;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Contact\Components\Contact_Form' => 'contact_form',
        ];
    }

    public function registerSettings()
    {
    }
    public function registerMailTemplates()
    {
        return [
            'quang.contact::mail_to_customer.message' => 'Activation mail sent to new users.',
            'quang.contact::mail_to_me.message'  => 'Password reset instructions for front-end users.'
        ];
    }
}
