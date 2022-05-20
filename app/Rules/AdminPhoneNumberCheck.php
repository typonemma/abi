<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class AdminPhoneNumberCheck implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {

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
        return substr($value, 0,3) == '+62' && preg_match('/^[0-9]+$/', substr($value, 3)) == 1
                && (strlen(substr($value, 3)) >= 1 && strlen(substr($value, 3)) <= 30);
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Phone number not valid';
    }
}
