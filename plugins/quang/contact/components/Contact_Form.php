<?php namespace Quang\Contact\Components;

use Cms\Classes\ComponentBase;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Quang\Config\Models\Config;

class Contact_Form extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name' => 'Contact Form',
            'descrition' => 'Simple contact form'
        ];
    }

    public function onSend()
    {
        $validator = Validator::make(
            [
                'name' => Input::get('name'),
                'email' => Input::get('email'),
                'phone' => Input::get('phone'),
                'title' => Input::get('title'),
                'description' => Input::get('description'),
            ],
            [
                'name' => 'required',
                'email' => 'required|email',
                'phone' => 'required',
                'title' => 'required',
                'description' => 'required'
            ]
        );
        if ($validator->fails()) {
//            return Redirect::back()->withErrors($validator);
            return ['#result'=>$this->renderPartial('contact_form::messages',[
                'errorMsgs'=>$validator->messages()->all(),
                'fieldMsgs'=>$validator->messages(),
            ])];
        } else {
            $vars = ['name' => Input::get('name'), 'email' => Input::get('email'), 'phone' => Input::get('phone'), 'description' => Input::get('description'), 'subject' => 'haha'];

            Mail::send('quang.contact::mail_to_customer.message', $vars, function ($message) {
                $message->to(Input::get('email'), 'Ok Con Dê');
                $message->subject('New Message From Test');

            });

            Mail::send('quang.contact::mail_to_me.message', $vars, function ($message) {
                $message->to(Config::first()->config_email_company, 'Catch');
                $message->subject('Có mail mới');

            });
        }

    }

}
