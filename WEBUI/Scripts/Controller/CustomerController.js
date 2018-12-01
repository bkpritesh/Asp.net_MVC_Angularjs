Myapp.controller("CustomerController", function ($scope, $http, $modal, $log, $filter, toaster, CustomerService) {
    $scope.cus = {};
    $scope.init = function () {        
        $scope.Customer.Method.GetCustomerInfo();        
    }; 
    $scope.Customer = {
        Method: {
            SetCustomerInfo: function (response) {                
                $scope.customerdata = response.data;
                $scope.Customer.Method.SetPaginationData();
                $scope.propertyName = 'Country';
                $scope.reverse = false;
            },
            SetCustomerInfoByID: function (response) {
                $scope.cus = response.data;
            },
            GetCustomerInfo: function () {
                $scope.Customer.Services.GetCustomerInfo();                
            },
            SortCustomer: function (propertyName) {
                $scope.reverse = ($scope.propertyName === propertyName) ? !$scope.reverse : false;
                $scope.propertyName = propertyName;
            },
            SetPaginationData : function (){                
                $scope.viewby = 10;
                $scope.totalItems = $scope.customerdata.length;
                $scope.currentPage = 1;
                $scope.itemsPerPage = $scope.viewby;
                $scope.maxSize = 5;
            },          
            DeleteCustomer: function () {
                $scope.Customer.Services.DeleteCustomer($scope.hfcustomerid);
                $scope.customerdata.splice($scope.DeleteIndex + 1 ,1);                
                $scope.$modalInstance.dismiss('cancel');
                $scope.toastmessage("Customer record delete sucessfully!!");
            },              
            ShowForm: function (commandtype) {
                $scope.comandtype = commandtype;                          
                if (commandtype == "add")
                {
                    $scope.cus = null;
                }
                else
                {
                    $scope.cus.DOB = $filter('date')($scope.cus.DOB, "yyyy-MM-dd");
                }
                $scope.$modalInstance = $modal.open({
                    scope: $scope,                 
                    templateUrl: "modal.html",
                    size: '',
                    resolve: {
                        customerForm: function () {
                            return $scope.cus;
                        }
                    }
                });                
            },           
            cancel: function ($modalInstance) {               
                $scope.$modalInstance.dismiss('cancel');
            },
            editCustomer: function (customerInfo,Index) {
                $scope.editIndex = Index;
                CustomerDOB = $filter('date')(customerInfo.DOB, "yyyy-MM-dd");
                $scope.cus = { ID: customerInfo.ID, FirstName: customerInfo.FirstName, MiddleName: customerInfo.MiddleName, LastName: customerInfo.LastName, Gender: customerInfo.Gender, DOB: CustomerDOB, Email: customerInfo.Email, MobileNo: customerInfo.MobileNo, Address: customerInfo.Address, City: customerInfo.City, State: customerInfo.State, Country: customerInfo.Country }
                //$scope.Customer.Services.GetCustomerInfoById(id);
                $scope.Customer.Method.ShowForm("edit");
            },
            AddNewCustomer : function (response){
                $scope.customerdata.splice(0, 0, response.data);
                $scope.toastmessage("Customer record insert sucessfully!!");
            },
            AddCustomer: function (cus,form,$modalInstance) {
                if (form.$valid) {
                    if ($scope.comandtype == "edit") {                        
                        $scope.Customer.Services.UpdateCustomerInfo(cus.ID, cus)
                        $scope.customerdata[$scope.editIndex] = cus;                       
                        $scope.toastmessage("Customer record update sucessfully!!");
                    } else {
                        $scope.Customer.Services.InsertCustomerInfo(cus);
                        //$scope.customerdata.push(cus);
                        //$scope.customerdata.splice(0, 0, cus);
                        //$scope.toastmessage("Customer record insert sucessfully!!");
                    }                   
                    console.log('user form is in scope');
                    $scope.$modalInstance.dismiss('cancel');
                } else {
                    console.log('userform is not in scope');
                    return;
                }            
            },
            DeletePopup: function (ID, Index) {
                $scope.hfcustomerid = ID;
                $scope.DeleteIndex = Index;
                $scope.$modalInstance = $modal.open({
                    scope: $scope,
                    templateUrl: "modaldelete.html",
                    size: ''                    
                });
            }
        },
        Services: {
            GetCustomerInfo: function () {
                // $http.get('/api/api/Customer').then($scope.Customer.Method.SetCustomerInfo);   
                var promise = CustomerService.GetCustomer();
                promise.then(
                 function (response) {
                            $scope.Customer.Method.SetCustomerInfo(response);
                 }
                ),
                function (error)
                {
                    $log.error('failure loading customer', error);
                }                
            },
            DeleteCustomer: function (id) {
                $http.delete('/api/api/Customer/' + id).then();
            },
            GetCustomerInfoById: function (id) {
                $http.get('/api/api/Customer/' + id).then($scope.Customer.Method.SetCustomerInfoByID);
            },
            InsertCustomerInfo: function (Customer) {
                $http.post('/api/api/Customer', Customer).then($scope.Customer.Method.AddNewCustomer);
            },
            UpdateCustomerInfo : function (ID,Customer){
                $http.put('/api/api/Customer/' + ID, Customer).then();
            }
        }
    };
    $scope.toastmessage = function (msg) {
        toaster.success({ title: msg});
    };
    $scope.init();
});
