var generalControllers = {};
var generalModuls_array = [ ];
var merchantApp = angular.module('merchantApp', generalModuls_array);
merchantApp.config(['$httpProvider', function ($httpProvider) {

    $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

    var param = function (obj) {
        var query = '', name, value, fullSubName, subName, subValue, innerObj, i;
        console.log('param ==>',obj);
        for (name in obj) {
            value = obj[name];

            if (value instanceof Array) {
                for (i = 0; i < value.length; ++i) {
                    subValue = value[i];
                    fullSubName = name + '[' + i + ']';
                    innerObj = {};
                    innerObj[fullSubName] = subValue;
                    query += param(innerObj) + '&';
                }
            }
            else if (value instanceof Object) {
                for (subName in value) {
                    subValue = value[subName];
                    fullSubName = name + '[' + subName + ']';
                    innerObj = {};
                    innerObj[fullSubName] = subValue;
                    query += param(innerObj) + '&';
                }
            }
            else if (value !== undefined && value !== null)
                query += encodeURIComponent(name) + '=' + encodeURIComponent(value) + '&';
        }
        console.log('query ==>',query);
        return query.length ? query.substr(0, query.length - 1) : query;
    };
    $httpProvider.defaults.transformRequest = [function (data) {
        return angular.isObject(data) && String(data) !== '[object File]' ? param(data) : data;
    }];

}]);

merchantApp .directive('onlyDigits', function () {
    return {
        require: 'ngModel',
        restrict: 'A',
        link: function (scope, element, attr, ctrl) {
            function inputValue(val) {
                if (val) {
                    var digits = val.replace(/[^0-9]/g, '');

                    if (digits !== val) {
                        ctrl.$setViewValue(digits);
                        ctrl.$render();
                    }
                    return parseInt(digits,10);
                }
                return undefined;
            }
            ctrl.$parsers.push(inputValue);
        }
    };
});
merchantApp.controller(generalControllers);

generalControllers.mainCtrlGeneral = function ($scope) {

    $scope.hide_loader = function () {
        $scope.loadergif=false;
    }

    $scope.show_loader = function () {
        $scope.loadergif=true;
    }
};


$(document).on('ready', function() {
    var csrfToken = $("#csrfToken").val();
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN' : csrfToken
        }
    });
});
