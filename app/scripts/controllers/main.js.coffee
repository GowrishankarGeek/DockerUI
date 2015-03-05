'use strict'
angular.module('googleApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.dockerContent = {};
    $scope.dockerContent.url = "/views/_docker_summary.html"