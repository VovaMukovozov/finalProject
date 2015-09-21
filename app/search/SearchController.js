App.controller('SearchController', ['$scope','$http','$timeout', function($scope,$http,$timeout) {
    
    $scope.dataSearch = [];
    $scope.result = false;
    $scope.searchArr = {};
    
    $scope.search = function() {
        $scope.result = true;
        if($scope.searchStr.length > 3) {
            var data = {};
            data['search'] = $scope.searchStr;
           $http({
            url: '../musicStore/api/application/api/search',
            method: "POST",
            data: JSON.stringify(data),
            }).success(function(response) {
                $scope.searchArr = response['data'];
            });
        }
    }
    
    $scope.closeBox = function() {
        $timeout(function() {
            $scope.result = false;
        }, 500); 
    }
}]);