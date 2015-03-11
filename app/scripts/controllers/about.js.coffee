'use strict'
angular.module('googleApp')
  .controller 'AboutCtrl', ['$scope', '$routeParams', 'ngTableParams', '$location','Sample', '$rootScope', '$sce', '$compile',
  ($scope, $routeParams, ngTableParams, $location, Sample, $rootScope, $sce, $compile)->

    data = [{"id":"3176a2479c92","image":"bluemeric/nginx:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"1 hours ago","ports":[{"privateport":22,"publicport":2424,"type":"tcp"},{"publicport":5050,"privateport":8080,"type":"tcp"}],"name":"ngnix"},
             {"id":"f46477f313b5","image":"bluemeric/tomcat:bm.142","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2222,"type":"tcp"},{"privateport":8080,"publicport":7070,"type":"tcp"}],"name":"tomcat_test"},
             {"id":"4cb07b47f9fb","image":"bluemeric/mysql:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2626,"type":"tcp"}],"name":"mysqld"},
             {"id":"84ed738edf74","image":"bluemeric/ubuntu:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"3 hours ago","ports":[{"privateport":22,"publicport":2525,"type":"tcp"}],"name":"tomcat"},
             {"id":"59d94965a743","image":"bluemeric/ubuntu:109.2756","command":"/usr/bin/supervisor","status":"Exit 0","created":"4 hours ago","ports":[],"name":"ubuntu_test"},{"id":"3176a2479c92","image":"bluemeric/nginx:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"1 hours ago","ports":[{"privateport":22,"publicport":2424,"type":"tcp"},{"publicport":5050,"privateport":8080,"type":"tcp"}],"name":"ngnix"},
             {"id":"f46477f313b5","image":"bluemeric/tomcat:bm.142","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2222,"type":"tcp"},{"privateport":8080,"publicport":7070,"type":"tcp"}],"name":"tomcat_test"},
             {"id":"4cb07b47f9fb","image":"bluemeric/mysql:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2626,"type":"tcp"}],"name":"mysqld"},
             {"id":"84ed738edf74","image":"bluemeric/ubuntu:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"3 hours ago","ports":[{"privateport":22,"publicport":2525,"type":"tcp"}],"name":"tomcat"},
             {"id":"59d94965a743","image":"bluemeric/ubuntu:109.2756","command":"/usr/bin/supervisor","status":"Exit 0","created":"4 hours ago","ports":[],"name":"ubuntu_test"},{"id":"3176a2479c92","image":"bluemeric/nginx:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"1 hours ago","ports":[{"privateport":22,"publicport":2424,"type":"tcp"},{"publicport":5050,"privateport":8080,"type":"tcp"}],"name":"ngnix"},
             {"id":"f46477f313b5","image":"bluemeric/tomcat:bm.142","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2222,"type":"tcp"},{"privateport":8080,"publicport":7070,"type":"tcp"}],"name":"tomcat_test"},
             {"id":"4cb07b47f9fb","image":"bluemeric/mysql:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2626,"type":"tcp"}],"name":"mysqld"},
             {"id":"84ed738edf74","image":"bluemeric/ubuntu:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"3 hours ago","ports":[{"privateport":22,"publicport":2525,"type":"tcp"}],"name":"tomcat"},
             {"id":"59d94965a743","image":"bluemeric/ubuntu:109.2756","command":"/usr/bin/supervisor","status":"Exit 0","created":"4 hours ago","ports":[],"name":"ubuntu_test"}]

    $scope.tableParams = new ngTableParams({
      page: 1
      count: 10
    },
    total: data.length
    getData: ($defer, params) ->
      $defer.resolve data.slice((params.page() - 1) * params.count(), params.page() * params.count())
      return
    )
    # $scope.toggleDetail = ($index)  ->
    #   debugger;
    #   $scope.activePosition = $scope.activePosition == $index ? -1 : $index;

]
