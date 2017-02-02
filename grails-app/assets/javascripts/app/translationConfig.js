angular.module('app')
    .config(function ($translateProvider, $compileProvider, tmhDynamicLocaleProvider) {
        tmhDynamicLocaleProvider.localeLocationPattern('/assets/i18n/angular-locale_{{locale}}.js');
        $compileProvider.aHrefSanitizationWhitelist(/^\s*(https?|file|ftp|blob):|data:image\//);
        $translateProvider.useSanitizeValueStrategy('escaped');
        $translateProvider
            .translations('en', {
                'panel.login.label': 'Login',

            })
            .translations('fr', {
                'panel.login.label': 'Login',

            })
            .translations('it', {
                'panel.login.label': 'Login',

            })

            .preferredLanguage('en');
    });