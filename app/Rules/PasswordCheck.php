<?php

namespace App\Rules;

use App\Models\User;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Support\Facades\Hash;

class PasswordCheck implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
       //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $arr = explode('-', $value);
        if (trim($arr[0], ' ') != '' && trim($arr[1], ' ') != '') {
            $phone_number = '+62' . substr($arr[0], 1);
            $user = User::where('phone_number', '=', $phone_number)->first();
            if ($user != null) {
                return Hash::check($arr[1], $user->password);
            }
        }
        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Wrong password';
    }
}
