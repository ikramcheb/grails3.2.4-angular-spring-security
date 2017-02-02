//= wrapped
//= require ../bower/jquery/dist/jquery.js
//= require ../bower/bootstrap.js
//= require ../bower/angular/angular.js
//= require ../bower/angular-bootstrap/ui-bootstrap.js
//= require ../bower/angular-bootstrap/ui-bootstrap-tpls.js
//= require ../bower/angular-resource/angular-resource.js
//= require ../bower/angular-route/angular-route.js
//= require ../bower/angular-webstorage/angular-webstorage.js
//= require ../bower/angular-translate/angular-translate.min.js
//= require ../bower/angular-translate/tmhDynamicLocale.min.js
//= require ../bower/angular-global/angular-animate.min.js
//= require ../bower/angular-global/angular-cookies.min.js
//= require ../bower/angular-global/angular-datepicker.min.js
//= require ../bower/angular-global/angular-file-saver.bundle.min.js
//= require ../bower/angular-global/angular-file-saver.min.js
//= require ../bower/angular-global/angular-filter.min.js
//= require ../bower/angular-global/angular-moment.min.js
//= require ../bower/angular-global/angular-notify.min.js
//= require ../bower/angular-global/angular-toggle-switch.min.js
//= require ../bower/angular-global/angular-xml2json.js
//= require ../bower/angular-global/ngprogress.min.js
//= require ../bower/angular-global/tinymce.js
//= require_self
//= require_tree .


angular.module('app', ['ngRoute', 'tmh.dynamicLocale','pascalprecht.translate', 'ngResource', 'ui.bootstrap',
    'ui.tinymce',
    'ngProgress', 'ngCookies', 'angular.filter', 'ngFileSaver', 'cgNotify',
    'angularXml2json', 'toggle-switch','webStorageModule'])
    .constant('config', {
    appName: 'RestaurantApp',
    Server_URL: 'http://localhost:9191',
    TIME_OUT: 1800000
});
