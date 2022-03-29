<?php
return [
    //Environment=> test/production
    'env' => 'test',
    //Google Ads
    'production' => [
        'developerToken' => "YOUR-DEV-TOKEN",
        'clientCustomerId' => "CLIENT-CUSTOMER-ID",
        'userAgent' => "YOUR-NAME",
        'clientId' => "848138315272-hjpmsketmkekldten46r1jsusrsnj0f9.apps.googleusercontent.com",
        'clientSecret' => "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",
        'refreshToken' => "REFRESH-TOKEN"
    ],
    'test' => [
        'developerToken' => "YOUR-DEV-TOKEN",
        'clientCustomerId' => "CLIENT-CUSTOMER-ID",
        'userAgent' => "YOUR-NAME",
        'clientId' => "848138315272-hjpmsketmkekldten46r1jsusrsnj0f9.apps.googleusercontent.com",
        'clientSecret' => "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",
        'refreshToken' => "REFRESH-TOKEN"
    ],
    'oAuth2' => [
        'authorizationUri' => 'https://accounts.google.com/o/oauth2/v2/auth',
        'redirectUri' => 'urn:ietf:wg:oauth:2.0:oob',
        'tokenCredentialUri' => 'https://www.googleapis.com/oauth2/v4/token',
        'scope' => 'https://www.googleapis.com/auth/adwords'
    ]
];