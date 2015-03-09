'use strict'

###*
 # @ngdoc service
 # @name googleApp.Docker
 # @description
 # # Docker
 # Service in the googleApp.
###
angular.module('googleApp')
  .service 'Docker',['$rootScope', '$http', '$upload', '$q',($rootScope, $http, $upload, $q)->
    # AngularJS will instantiate a singleton by calling "new" on this function

   showVersion: () ->
   	debugger



]