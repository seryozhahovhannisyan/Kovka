var controllers = {};
// angular.module('ui.bootstrap.demo', ['ngAnimate', 'ui.bootstrap']);
// var mainApp = angular.module('mainApp', ['ngTagsInput','ngSanitize', 'isteven-multi-select', 'ngTable', 'ngAnimate', 'ui.bootstrap', 'ngDroplet', bootstrapLightbox]);
var moduls_array = [];

// gg.push('ngTbale' );


var mainApp = angular.module('mainApp', moduls_array);
mainApp.config(['$httpProvider', function ($httpProvider) {

    $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

    var param = function (obj) {
        var query = '', name, value, fullSubName, subName, subValue, innerObj, i;
        console.log('param ==>', obj);
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
        console.log('query ==>', query);
        return query.length ? query.substr(0, query.length - 1) : query;
    };
    $httpProvider.defaults.transformRequest = [function (data) {
        return angular.isObject(data) && String(data) !== '[object File]' ? param(data) : data;
    }];

}]);

mainApp.controller(controllers);

controllers.mainCtrl = function ($scope, $window) {


    $scope.hide_loader = function () {
        $scope.loadergif = false;
    };

    $scope.show_loader = function () {
        $scope.loadergif = true;
    }
};


$(document).on('ready', function () {

    var csrfToken = $("#csrfToken").val();
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': csrfToken
        }
    });


});
