'use strict'
angular.module('googleApp')
  .controller 'MainCtrl', ['$scope', '$routeParams', '$location','Sample', '$rootScope', '$sce', '$compile',
  ($scope, $routeParams, $location, Sample, $rootScope, $sce, $compile)->
    $scope.dockerContent = {};
    $scope.dockerContent.url = "/views/_docker_summary.html"

    $scope.dockerSummary = (text) ->
       debugger
       Sample.showVersion({welcome:text}).then (data) ->
         debugger;

]