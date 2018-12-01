Myapp.directive('numbersOnly', function () {
    return {
        require: 'ngModel',
        link: function (scope, element, attr, Modeltest) {
            function fromUser(text) {
                if (text) {
                    var transformedInput = text.replace(/[^0-9]/g, '');

                    if (transformedInput !== text) {
                        Modeltest.$setViewValue(transformedInput);
                        Modeltest.$render();
                    }
                    return transformedInput;
                }
                return undefined;
            }
            Modeltest.$parsers.push(fromUser);
        }
    };
});
