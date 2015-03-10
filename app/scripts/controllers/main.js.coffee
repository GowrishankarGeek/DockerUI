'use strict'
angular.module('googleApp')
  .controller 'MainCtrl', ['$scope', '$routeParams', 'ngTableParams', '$location','Sample', '$rootScope', '$sce', '$compile',
  ($scope, $routeParams, ngTableParams, $location, Sample, $rootScope, $sce, $compile)->
    $scope.dockerContent = {};
    $scope.dockerContent.url = "/views/_docker_summary.html";
    $scope.name111 = "hai welcomeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee";
    data = [{"repo":"bluemeric/tomcat","tag":"latest","image_id":"02a315457498","created":"2 days ago","size":"876.1 MB"},
            {"repo":"bluemeric/tomcat","tag":"bm.1425","image_id":"084e43b4ea1f","created":"4 days ago","size":"872.1 MB"},
            {"repo":"bluemeric/mysql","tag":"latest","image_id":"f692ae108163","created":"7 days ago","size":"880.9 MB"},
            {"repo":"bluemeric/mysql","tag":"103.1563","image_id":"49a0cd814acf","created":"8 days ago","size":"860.2 MB"},
            {"repo":"bluemeric/postgres","tag":"latest","image_id":"162b60ad8db9","created":"8 days ago","size":"960.4 MB"}, 
            {"repo":"bluemeric/testtom123","tag":"latest","image_id":"b283c231f215","created":"9 days ago","size":"883.3 MB"},
            {"repo":"bluemeric/ubuntu","tag":"latest","image_id":"130b3033c31a","created":"2 weeks ago","size":"864.7 MB"},
            {"repo":"bluemeric/ubuntu","tag":"109.2756","image_id":"8f7d4a87f66f","created":"2 weeks ago","size":"860.9 MB"},
            {"repo":"bluemeric/testtom123","tag":"latest","image_id":"b283c231f215","created":"9 days ago","size":"883.3 MB"},
            {"repo":"bluemeric/ubuntu","tag":"latest","image_id":"130b3033c31a","created":"2 weeks ago","size":"864.7 MB"},
            {"repo":"bluemeric/ubuntu","tag":"109.2756","image_id":"8f7d4a87f66f","created":"2 weeks ago","size":"860.9 MB"}];
    $scope.tableParams = new ngTableParams({
      page: 1
      count: 10
    },
    total: data.length
    getData: ($defer, params) ->
      $defer.resolve data.slice((params.page() - 1) * params.count(), params.page() * params.count())
      return
    )

    $scope.dockerSummary = (text) ->
      Sample.showVersion({welcome:text}).then (data) ->
        debugger;

]