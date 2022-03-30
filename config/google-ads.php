<?php
return [
    //Environment=> test/production
    'env' => 'test',
    //Google Ads
    'production' => [
        'developerToken' => "YOUR-DEV-TOKEN",
        'clientCustomerId' => "591-624-5054",
        'userAgent' => "YOUR-NAME",
        'clientId' => "1069972266733-pl1mcu02e1p1kr55kqrhctais92dj6vo.apps.googleusercontent.com",
        'clientSecret' => "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",
        'refreshToken' => "1//0gNrsPGcBeM-XCgYIARAAGBASNwF-L9IrtWwkBe98pXK31tyMwS_DqNNph9LhgnL0Vx-CcI7olx8Mwkdy7fjtk8wGVSWXWP-Hcc4"
    ],
    'test' => [
        'developerToken' => "YOUR-DEV-TOKEN",
        'clientCustomerId' => "591-624-5054",
        'userAgent' => "YOUR-NAME",
        'clientId' => "1069972266733-pl1mcu02e1p1kr55kqrhctais92dj6vo.apps.googleusercontent.com",
        'clientSecret' => "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",
        'refreshToken' => "1//0gNrsPGcBeM-XCgYIARAAGBASNwF-L9IrtWwkBe98pXK31tyMwS_DqNNph9LhgnL0Vx-CcI7olx8Mwkdy7fjtk8wGVSWXWP-Hcc4"
    ],
    'oAuth2' => [
        'authorizationUri' => 'https://accounts.google.com/o/oauth2/v2/auth',
        'redirectUri' => 'urn:ietf:wg:oauth:2.0:oob',
        'tokenCredentialUri' => 'https://www.googleapis.com/oauth2/v4/token',
        'scope' => 'https://www.googleapis.com/auth/adwords'
    ]
];