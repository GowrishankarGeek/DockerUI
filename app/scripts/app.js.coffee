'use strict'
angular
  .module('googleApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'snap',
    'ngTable',
    'truncate',
    'ui.bootstrap'
  ])
  .constant 'appConfig', baseUrl: 'http://localhost:5000'
  .config ($httpProvider) ->
   [
    delete $httpProvider.defaults.headers.common['X-Requested-With'];
   ]

  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

