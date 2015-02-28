'use strict'

###*
 # @ngdoc function
 # @name googleApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the googleApp
###
angular.module('googleApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
