angular.module('app').controller('feedController',
    function ($resource, $scope, testService, config) {

        $scope.restaurants = [];

        $scope.init = function () {
            $scope.listRestaurants();
        }
        $scope.listRestaurants = function () {
            testService.getAll(config.Server_URL + config.appName +  "/api/restaurant/list")
                .then(function (data) {
                    $scope.restaurants = data;
                })
        }

    });