'use strict'

###*
 # @ngdoc function
 # @name googleApp.controller:HeaderCtrl
 # @description
 # # HeaderCtrl
 # Controller of the googleApp
###
angular.module('googleApp')
  .controller 'HeaderCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
