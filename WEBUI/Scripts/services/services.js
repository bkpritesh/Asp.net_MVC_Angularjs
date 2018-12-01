/// <reference path="../angular.js" />
//Myapp.service('CustomerService', function ($http) {
//    //this.GetCustomer = function () {
//    //    $http({
//    //        method: 'GET',
//    //        url: '/api/api/Customer'
//    //    }).then(function successCallback(response) {
//    //        //customer = response.data;
//    //        alert(response.data)
//    //        return response.data;            
//    //    }, function errorCallback(response) {
//    //        alert(response);
//    //    });        
//    //}
//    this.GetCustomer = function () {
//        return $http.get('/api/api/Customer');
//    };
//});

//Myapp.factory('CustomerService', function ($http) {
//    var promise;
//    var myService = {
//        async: function () {
//            if (!promise) {
//                // $http returns a promise, which has a then function, which also returns a promise
//                promise = $http.get('/api/api/Customer').then(function (response) {
//                    // The then function here is an opportunity to modify the response
//                    console.log(response);
//                    // The return value gets picked up by the then in the controller.
//                    return response.data;
//                });
//            }
//            // Return the promise to the controller
//            return promise;
//        }
//    };
//    return myService;
//});

Myapp.factory('CustomerService', function ($http) {
    return {        
        GetCustomer: function () {
           return  $http.get('/api/api/Customer');            
        }
    }
});

