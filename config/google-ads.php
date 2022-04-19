<?php
return [
    //Environment=> test/production
    'env' => 'test',
    //Google Ads
    'production' => [
        'developerToken' => "YOUR-DEV-TOKEN",
        'clientCustomerId' => "120-710-9591",
        'userAgent' => "YOUR-NAME",
        'clientId' => "747912626940-9rorhb1dah1ca9v368340agu98dn3oi7.apps.googleusercontent.com",
        'clientSecret' => "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",
        'refreshToken' => "1//0g8hNZqO0kjYsCgYIARAAGBASNwF-L9IrPWLg033aztVcmoxd8SHE5Ozpk6xd0wIDfFVaty59bjy3lG-DemJnNwTiUqlixYFAslo"
    ],
    'test' => [
        'developerToken' => "YOUR-DEV-TOKEN",
        'clientCustomerId' => "120-710-9591",
        'userAgent' => "YOUR-NAME",
        'clientId' => "747912626940-9rorhb1dah1ca9v368340agu98dn3oi7.apps.googleusercontent.com",
        'clientSecret' => "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",
        'refreshToken' => "1//0g8hNZqO0kjYsCgYIARAAGBASNwF-L9IrPWLg033aztVcmoxd8SHE5Ozpk6xd0wIDfFVaty59bjy3lG-DemJnNwTiUqlixYFAslo"
    ],
    'oAuth2' => [
        'authorizationUri' => 'https://accounts.google.com/o/oauth2/v2/auth',
        'redirectUri' => 'urn:ietf:wg:oauth:2.0:oob',
        'tokenCredentialUri' => 'https://www.googleapis.com/oauth2/v4/token',
        'scope' => 'https://www.googleapis.com/auth/adwords'
    ]
];