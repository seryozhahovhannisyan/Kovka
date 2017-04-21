
$(document).ready(function(){
    booking_default_date();
})

function booking_default_date(){
    // Return today's date and time
    var currentTime = new Date();
    // returns the month (from 0 to 11)
    var month = currentTime.getMonth() + 1;
    // returns the day of the month (from 1 to 31);
    var day = currentTime.getDate();
    // returns the year (four digits)
    var year = currentTime.getFullYear();

    $('.s-day option').filter(function () { return $(this).val() == day; }).prop({selected: true});
    $('.s-month option').filter(function () { return $(this).val() == month; }).prop({selected: true});
    $('.s-year option').filter(function () { return $(this).val() == year; }).prop({selected: true});

    $('.s-day[name=arrivalDay]').on('change', function(){
        var val = $(this).val();
        $('.s-day option').filter(function () { return $(this).val() == val; }).prop({selected: true});
    })
    $('.s-month[name=arrivalMonth]').on('change', function(){
        var val = $(this).val();
        $('.s-month option').filter(function () { return $(this).val() == val; }).prop({selected: true});
    })
    $('.s-year[name=arrivalYear]').on('change', function(){
        var val = $(this).val();
        $('.s-year option').filter(function () { return $(this).val() == val; }).prop({selected: true});
    })

}

var TEMPLATE_ROOT_DIRECTORY = '/js/guest/template';
var IMAGE_ROOT_DIRECTORY = '/images';
var ACTION_LOAD_PARENT_CATEGORIES = "load-parent-categories.action";
var ACTION_LOAD_COUNTRIES = "load-countries.action";
var ACTION_DESTINATION = "/destination.action";
var ACTION_DESTINATIONS = "/destinations.action";
var DESTINATION_FILTER_NAMES_AVAILABLE_COLUMNS = 6;


var ACTION_CATEGORIES = [];
ACTION_CATEGORIES[1] = "/packages.action";
ACTION_CATEGORIES[22] = "/packages.action";
ACTION_CATEGORIES[7] = "/hotels.action";
ACTION_CATEGORIES[35] = "/mice.action";


var ACTION_FILTER = [];
ACTION_FILTER["regions"] = "/load-regions.action";
ACTION_FILTER["cities"] = "/load-cities.action";
ACTION_FILTER["prices"] = "/load-hotel-price-ranges.action";
ACTION_FILTER["countries"] = "/load-countries.action";
ACTION_FILTER["markedcountries"] = "/load-marked-countries.action";
ACTION_FILTER["tour_types"] = "/load-tour-types.action";
ACTION_FILTER["tour_durations"] = "/load-tour-durations.action";
ACTION_FILTER["rates"] = "/load-rates.action";
ACTION_FILTER["destination"] = "/load-filter-destinations.action";
/**@Deprecated*/
ACTION_FILTER["locations"] = "/load-locations.action";


tourAgencyApp = angular.module('tourAgencyApp', []);
tourAgencyApp.config(['$httpProvider', function ($httpProvider) {

    $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

    var param = function (obj) {
        var query = '', name, value, fullSubName, subName, subValue, innerObj, i;

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

        return query.length ? query.substr(0, query.length - 1) : query;
    };
    $httpProvider.defaults.transformRequest = [function (data) {
        return angular.isObject(data) && String(data) !== '[object File]' ? param(data) : data;
    }];

}]);
tourAgencyApp.controller('homeCtrl', function ($scope, $sce) {

    $scope.tours = [];
    $scope.hotels = [];
    $scope.packages = [];
    $scope.destinations = [];
    $scope.customdestinations = [];
    $scope.underconst = [];
    $scope.searches = [];
    $scope.pagination = {};
    $scope.republics = [];
    $scope.partners = [];
    $scope.halls = [];

    $scope.deliberatelyTrustAsHtml = function (param) {
        return $sce.trustAsHtml(param);
    };

    $scope.goTo = function (event) {
        var href_ = event.target.attributes.redirect.value;
        window.location = href_;
    }

    // create linked titles , the selected box should be opened on click on title.
    $scope.concat_titles = function (page_id, data) {
        var result = '';
        if (data && data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                /*result += '<a ng-href="#here" data-ng-click="goToSelectedDestination('+data[i]+')">'+*/
                result += '<a style=" cursor : pointer " onClick="goToSelectedDestination(this,' + page_id + ',' + data[i].id + ')">' +
                    data[i].title +
                    '</a>';
                if (i < data.length - 1) {
                    result += ' / ';
                }
            }
        }
        return result;
    }

    goToSelectedDestination = function (this_, page_id, data) {
        $('#clonedDiv').remove();
        var pageType = 'customdestinations';
        var box;
        var customdestinations = $scope[pageType];
        dest_label:
            for (var i = 0; i < customdestinations.length; i++) {
                for (var customI in customdestinations[i].destinations) {
                    var cdd = customdestinations[customI].destinations;
                    for (var ci in cdd) {
                        var customdestination = cdd[ci];
                        //check if destinations element is valid
                        if (customdestination != null && customdestination.id == page_id) {

                            for (var des in customdestination.destinations) {
                                var desItem = customdestination.destinations[des];
                                for (var d in desItem) {
                                    if (des != null && desItem[d].id == data) {
                                        var selectedId = desItem[d].id;
                                        var selected_title = desItem[d].title;
                                        var selected_img = desItem[d].postImage;
                                        var selected_content = '<p style="text-align:justify">' + desItem[d].content.replace(/<[^>]*>/g, "") + '</p>';
                                        box = new SelectedPage(selectedId, selected_img, selected_title, selected_content);
                                        break dest_label;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        $scope.$emit('BOX_ITEM_UPDATED', box);
        $scope.$apply();
        var clonedDiv = $('#box-selected-item').clone();
        $('#box-selected-item').hide();
        $(clonedDiv).show();
        clonedDiv.attr("id", "clonedDiv");
        $(clonedDiv).find('.tour-box-large-description').attr("style", "width : 95%; margin-top : 15; margin-bottom : 57px;");
        $(this_).parent().parent().append(clonedDiv);
    }

    $scope.iteration = function (data, start, end, step) {
        var input = [];
        if (data != null) {
            for (var i = start; i <= end;) {
                if (data[i] != null) {
                    input.push(data[i]);
                }
                i += step;
            }
        } else if (data == null) {
            for (var i = start; i <= end;) {
                input.push(i);
                i += step;
            }
        }
        return input;
    };


    //
    //Hotel filtering exists values
    //
    $scope.selectHotelCity = function (id) {
        var val = document.getElementById("id_cities_" + id).innerHTML;
        return val;
    }

    $scope.selectHotelRegion = function (id) {
        var val = document.getElementById("id_regions_" + id).innerHTML;
        return val;
    }

    $scope.selectHotelPrice = function (id) {
        var val = document.getElementById("id_prices_" + id).innerHTML;
        return val;
    }

    $scope.selectCountry = function (id) {
        var val = document.getElementById("id_countries_" + id).innerHTML;
        return val;
    }

    //
    //Tour filtering exists values
    //

    $scope.selectMarkedCountry = function (id) {
        var val = document.getElementById("id_markedcountries_" + id).innerHTML;
        return val;
    }

    $scope.selectTourTypes = function (id) {
        var val = document.getElementById("id_tour_types_" + id).innerHTML;
        return val;
    }

    $scope.selectTourDurations = function (id) {
        var val = document.getElementById("id_tour_durations_" + id).innerHTML;
        val = val.replace(/&nbsp;/g, ' ');
        return val;
    }

    $scope.selectRegion = function (id) {
        var val = document.getElementById("id_regions_" + id).innerHTML;
        return val;
    }

    $scope.arrival_year;
    $scope.arrival_month;
    $scope.arrival_day;

    $scope.departure_year;
    $scope.departure_month;
    $scope.departure_day;

    $scope.updateDate = function (type) {
        if (type == 'arrival') {
            $scope.date = new Date($scope.arrival_year, $scope.arrival_month - 1, $scope.arrival_day);
        } else if (type == 'departure') {
            $scope.date = new Date($scope.departure_year, $scope.departure_month - 1, $scope.departure_day);
        }
    };
})
tourAgencyApp.factory('HttpRequest', function () {

    var loadData = {};

    loadData.getResponse = function (param, url) {

        var data;

        var toRequestParam = function (obj) {
            var query = '', name, value;

            for (name in obj) {
                value = obj[name];

                if (value !== undefined && value !== null)
                    query += encodeURIComponent(name) + '=' + encodeURIComponent(value) + '&';
            }

            return query.length ? query.substr(0, query.length - 1) : query;
        };

        var xhr = new XMLHttpRequest();
        xhr.open('POST', url, false);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.setRequestHeader('Accept', 'application/json, text/javascript');
        xhr.onreadystatechange = function (response) {

            if (xhr.readyState == 4 && xhr.status == 200) {

                var json = eval("(" + xhr.responseText + ")");

                var resp = json.actionDto;

                if (resp != null) {
                    if (resp.responseStatus == "SUCCESS") {
                        data = json.actionDto;
                    } else if (resp.responseStatus == "INTERNAL_ERROR") {
                        console.warn("empty INTERNAL_ERROR");
                        data = json.actionDto;
                    } else if (resp.responseStatus == "INVALID_PARAMETER") {
                        console.warn("empty INVALID_PARAMETER");
                        data = json.actionDto;
                    } else {
                        console.warn("empty");
                    }
                } else {
                    //todo
                    console.error("empty resp");
                }

            }
        };
        xhr.send(toRequestParam(param));
        return data;
    }

    return loadData;
})
tourAgencyApp.factory('Template', function () {

    var template = {};

    template.getTemplate = function (contentType) {

        var small = TEMPLATE_ROOT_DIRECTORY + '/tour_box_small.html';
        var search = TEMPLATE_ROOT_DIRECTORY + '/search-box.html';
        var destination = TEMPLATE_ROOT_DIRECTORY + '/destination.html';
        var custom_destination = TEMPLATE_ROOT_DIRECTORY + '/custom_destination-new.html';
        var large = TEMPLATE_ROOT_DIRECTORY + '/home-republic.html';
        var selected_destination = TEMPLATE_ROOT_DIRECTORY + '/selected_destination.html';
        var booking = TEMPLATE_ROOT_DIRECTORY + '/booking.html';
        var bookingtransportation = TEMPLATE_ROOT_DIRECTORY + '/bookingtransport.html';
        var partner = TEMPLATE_ROOT_DIRECTORY + '/partner.html';

        var template = '';

        switch (contentType) {
            case 'small':
                template = small;
                break;
            case 'search':
                template = search;
                break;
            case 'destination':
                template = destination;
                break;
            case 'custom-destination':
                template = custom_destination;
                break;
            case 'large':
                template = large;
                break;
            case 'selected_page':
                template = selected_destination;
                break;
            case 'booking':
                template = booking;
                break;
            case 'bookingtransportation':
                template = bookingtransportation;
                break;
            case 'partner':
                template = partner;
                break;
        }
        return template;
    }

    return template;
})
tourAgencyApp.directive('pageFilter', function ($http, HttpRequest) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {

            var filter = attrs.pageFilter;
            var mark = attrs.pageFilterMark;
            var filterRegion = attrs.filterRegion;
            var action = ACTION_FILTER[filter];

            var params = [];
            if (mark != null && mark.length != 0) {
                params['mark'] = mark;
            }
            if (filterRegion != null && filterRegion > 0) {
                params['regionId'] = filterRegion;
            }

            var actionDto = HttpRequest.getResponse(params, action);
            var dtos = actionDto.response.dtos;

            var ul = '';
            if (dtos != null) {
                if (filter != 'destination') {
                    for (var i = 0; i < dtos.length; i++) {
                        var c = dtos[i];
                        ul += '<li><a href="#" onclick="' + filter + '(' + c.id + ')" id="id_' + filter + '_' + c.id + '" >' + c.name + '</a></li>';
                    }
                } else {
                    var newCharCount = 0;
                    for (var i = 0; i < dtos.length; i++) {
                        if (i != 0) {
                            var prevName = dtos[i - 1].name;
                            if (prevName.charAt(0) != dtos[i].name.charAt(0)) {
                                newCharCount++;
                            }
                        }
                    }

                    var index = 0;
                    var size = dtos.length + (newCharCount - 1) * 3;
                    /*Every new Char line eqauls about 3 rows */
                    var rowCount = size / DESTINATION_FILTER_NAMES_AVAILABLE_COLUMNS;
                    rowCount = 15;//Math.ceil(rowCount);
                    lab:
                        for (var i = 0; i <= DESTINATION_FILTER_NAMES_AVAILABLE_COLUMNS; i++) {

                            if (i != 0) {
                                //close row, than column
                                ul += '</div></div>';
                            }
                            //open column
                            ul += '<div class="d_cat" style="margin-top: 7px;">';

                            labRow:
                                for (var r = 0; r < rowCount; r++) {
                                    // if there are empty data break iteration
                                    if (dtos[index] == null) {
                                       continue;
                                    }

                                    var c = dtos[index];
                                    var id = c.id;
                                    var name = c.name;
                                    var fl_name = name.charAt(0);

                                    if (r != 0) {
                                        var prevName = dtos[index - 1].name;
                                        if (prevName.charAt(0) !== fl_name) {
                                            r += 1;
                                            ul += '</div><div><p style="line-height: 0.7;color: rgb(124,247,240);font-weight: bold;">' + fl_name.toUpperCase() + '</p>';
                                        }
                                    } else {
                                        // open first new Char header
                                        var prevName = index > 0 ? dtos[index - 1].name : '';
                                        if (prevName.charAt(0) != fl_name) {
                                            ul += '<div><p style="line-height: 0.7;color: rgb(124,247,240);font-weight: bold;">' + fl_name.toUpperCase() + '</p>';
                                            r++;
                                        } else {
                                            ul += '<div><p class="s_desc" style="margin-top: -17px">&nbsp;</p>';
                                        }

                                    }
                                    // if destination name is longer show part of them
                                    if (name.length > 24) {
                                        name = name.substr(0, 24) + ' ...';
                                    }
                                    ul += '<p class="s_desc" style="cursor: pointer;" onclick="selectDestination(' + id + ')">' + name + '</p>';
                                    index++;
                                }
                        }
                }

            }
            element.append(ul);
        }
    };
})
tourAgencyApp.directive('pageFilterImage', function ($http, HttpRequest) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {

            var filter = attrs.pageFilterImage;
            var mark = attrs.pageFilterMark;
            var action = ACTION_FILTER[filter];

            var params = [];
            if (mark != null && mark.length != 0) {
                params['mark'] = mark;
            }

            var actionDto = HttpRequest.getResponse(params, action);
            var dtos = actionDto.response.dtos;

            var ul = '';
            if (dtos != null) {
                for (var i = 0; i < dtos.length; i++) {
                    var c = dtos[i];
                    var name = c.name;
                    if (filter == 'prices') {
                        var img = '<img src="' + IMAGE_ROOT_DIRECTORY + '/AMD.png"/>';
                        //name = name.replace('img',img);
                        if (i == dtos.length - 1) {
                            var array = name.split(":");
                            if (array != undefined && array.length == 2) {
                                name = array[0] + img + '&nbsp;' + array[1];
                            }
                        } else {
                            name += '&nbsp;' + img;
                        }
                    }

                    ul += '<li><a href="#" onclick="' + filter + '(' + c.id + ')" id="id_' + filter + '_' + c.id + '" >' + name + '</a></li>';
                }
            }
            element.append(ul);
        }
    };
})
tourAgencyApp.directive('pageFilterRate', function ($http, HttpRequest) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {

            var filter = attrs.pageFilterRate;
            var action = ACTION_FILTER[filter];

            var params = [];

            var actionDto = HttpRequest.getResponse(params, action);
            var dtos = actionDto.response.dtos;

            var ul = '';
            if (dtos != null) {

                for (var i = 0; i < dtos.length; i++) {
                    var rate = dtos[i];
                    var rate_id = rate.id;

                    var currencyType = rate.currencyType;
                    var currentRate = rate.currentRate;
                    var lastUpdated = rate.lastUpdated;
                    /*todo ask aper*/
                    var scopeRate = new Rate(rate_id, currencyType, currentRate, lastUpdated);
                    ul += '<li><a href="javascript:void(0);" onclick="exchangeRate(\'' + currentRate + '\',\'' + currencyType + '\')"><span class="flag ' + currencyType.toLowerCase() + '"></span> <span>' + currencyType + '</span></a></li>';
                }
            }
            element.append(ul);
        }
    };
})
tourAgencyApp.directive('countries', function ($http, HttpRequest) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {
            var actionDto = HttpRequest.getResponse([], ACTION_LOAD_COUNTRIES);
            var dtos = actionDto.response.dtos;
            var select = '';
            if (dtos != null) {

                for (var i = 0; i < dtos.length; i++) {
                    var c = dtos[i];
                    var selected = '';
                    if (c.id == 10) {
                        selected += ' selected = "selected" ';
                    }
                    select += '<option ' + selected + ' value="' + c.id + '">' + c.name + '</option>';
                }
            }
            element.append(select);
        }
    };
})
tourAgencyApp.directive('ngLocale', function () {
    return {
        restrict: 'EA',
        link: function (scope, element, attrs) {

            var name;

            if (attrs.ngLocale != null) {
                name = attrs.ngLocale;
            } else {
                name = attrs.name
            }
            var current_lang = "_" + document.getElementById("current_lang").value;
            if (name != null) {
                var found = eval("I18N_LOCALE_MESSAGES" + current_lang)[name];
                if (found != null) {
                    element.html(found);
                } else {
                    var default_lang = "_" + document.getElementById("default_lang").value;
                    element.html(eval("I18N_LOCALE_MESSAGES" + default_lang)[name]);
                }
            }
        }
    };
})
tourAgencyApp.directive('placehold', function () {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {

            var current_lang = "_" + document.getElementById("current_lang").value;

            var name = attr.placehold;
            var found = eval("I18N_LOCALE_MESSAGES" + current_lang)[name];
            if (found != null) {
                element.html(found);
            } else {
                var default_lang = "_" + document.getElementById("default_lang").value;
                element.html(eval("I18N_LOCALE_MESSAGES" + current_lang)[name]);
            }
        }
    };
});
tourAgencyApp.directive('boxes', function (HttpRequest) {

    var directive = {};
    directive.restrict = 'E';
    directive.compile = function (element, attributes) {
        var linkFunction = function ($scope, element, attr) {

            $(element).parent().addClass("content-loading");
            $(element).parent().find(".loading").show();
            try {

                var content_loading = document.getElementById("content_loading");
                if (content_loading != null) {
                    content_loading.style.display = '';
                }

                var box_page = attr.boxPage;
                var box_url = attr.boxUrl;

                var page_type = attr.pageType;

                var has_more_info = attr.moreInfo;
                var has_book = attr.book;

                var param = [];
                if (box_page != null && box_page > -1) {
                    param['page'] = box_page;
                }

                var page_category = attr.pageCategory;
                if (page_category != null) {
                    param['categoryId'] = page_category;
                }

                /*hotels filtering start if exists attach to request params*/

                var page_region = attr.pageRegion;
                if (page_region != null) {
                    param['regionId'] = page_region;
                    document.getElementById("region").innerHTML = $scope.selectHotelRegion(page_region) + ' <span class="caret"></span>';
                }

                var page_city = attr.pageCity;
                if (page_city != null) {
                    param['cityId'] = page_city;
                    document.getElementById("city").innerHTML = $scope.selectHotelCity(page_city) + ' <span class="caret"></span>';
                }

                var page_price = attr.pagePrice;
                if (page_price != null) {
                    param['priceId'] = page_price;
                    document.getElementById("price").innerHTML = $scope.selectHotelPrice(page_price) + ' <span class="caret"></span>';
                }
                /*hotels filtering end*/

                /*tours filtering start if exists attach to request params*/
                var page_country_id = attr.pageCountryid;
                if (page_country_id != null) {
                    param['countryId'] = page_country_id;
                    document.getElementById("country").innerHTML = $scope.selectMarkedCountry(page_country_id) + ' <span class="caret"></span>';
                }

                var page_tour_type = attr.pageTourtype;
                if (page_tour_type != null) {
                    param['tourType'] = page_tour_type;
                    document.getElementById("type").innerHTML = $scope.selectTourTypes(page_tour_type) + ' <span class="caret"></span>';
                }

                var page_duration = attr.pageDuration;
                if (page_duration != null) {
                    param['duration'] = page_duration;
                    document.getElementById("duration").innerHTML = $scope.selectTourDurations(page_duration) + ' <span class="caret"></span>';
                }

                /*tours filtering end*/

                var box_limit = attr.boxLimit;
                if (box_limit != null) {
                    param['limit'] = box_limit;
                }

                var box_search = attr.boxSearch;
                if (box_search != null) {
                    param['search'] = box_search;
                }

                var actionDto = HttpRequest.getResponse(param, box_url);

                if (actionDto != null && actionDto.response != null && actionDto.response.dtos != null && actionDto.response.dtos.length != 0) {

                    var dtos = actionDto.response.dtos;
                    var load_more = actionDto.response.loadMore;
                    var pagination_page = dtos.length / 4;
                    console.log('dests.load_more',load_more);
                    console.log('dests.pagination_page',pagination_page);
                    if (page_type == "searches") {
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            page_type = t.pageType;
                            var url_ = "#";
                            if (page_type == "hotels") {
                                url_ = '/hotel-single.action?postId=' + t.id;
                            } else if (page_type == "tours" || page_type == 'packages') {
                                url_ = '/tour-single.action?postId=' + t.id;
                            }  else if (page_type == "halls") {
                                url_ = '/conference-hall-single.action?postId=' + t.id;
                            } else if (page_type == "republics") {
                                url_ = '/republic.action?postId=' + t.id;
                                has_book = false;
                            } else if (page_type == "destinations") {
                                url_ = '/destinations.action?postId=' + t.id;
                                has_book = false;
                            }
                            var box = new Box(t.id, t.postImage, t.title, content, page_type, has_more_info, has_book, url_);
                            $scope[page_type].push(box);
                        }
                    }
                    else if (page_type == "destinations") {
                        var add_trip = attr.addTrip;
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            var destination = new Destination(t.id, t.postImage, t.title, content, '', page_type, has_more_info, add_trip);
                            $scope[page_type].push(destination);
                        }
                    }
                    else if (page_type == "customdestinations") {
                        var add_trip = attr.addTrip;
                        var count = 0;
                        for (var index  in dtos) {

                            var customdestination = {};
                            customdestination.day_count = index;
                            customdestination.destinations = [];
                            var dests = dtos[index];
                            for (var i = 0; i < dests.length; i++) {
                                count++;
                                var t = dests[i];
                                var destination = new Destination(t.id, t.tripImage, t.title, '', t.destinations, page_type, has_more_info, add_trip);
                                customdestination.destinations.push(destination);
                            }
                            $scope[page_type].push(customdestination);
                        }

                        pagination_page = count / box_limit;
                        console.log('pagination_page',pagination_page);
                    }
                    else {
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            var url_ = "#";
                            if (page_type == "hotels") {
                                url_ = '/hotel-single.action?postId=' + t.id;
                            }
                            else if (page_type == "tours" || page_type == 'packages') {
                                url_ = '/tour-single.action?postId=' + t.id;
                            }
                            else if (page_type == "halls"  ) {
                                url_ = '/conference-hall-single.action?postId=' + t.id;
                            }
                            else if (page_type == "republics") {
                                url_ = '/republic.action?postId=' + t.id;
                                has_book = false;
                            }
                            else if (page_type == "destinations") {
                                url_ = '/destinations.action?postId=' + t.id;
                                has_book = false;
                                content = '';
                            }
                            else if (page_type == "customdestinations") {
                                url_ = '/make-your-own-trip.action?postId=' + t.id;
                                has_book = false;
                                content = '';
                            }
                            else if (page_type == "partners") {
                                //url_='/contact.action#contactId=' + t.id;
                                url_ = t.content;
                            }
                            var box = new Box(t.id, t.postImage, t.title, content, page_type, has_more_info, has_book, url_);
                            $scope[page_type][i] = box;
                        }
                    }

                    $scope.pagination = {
                        "type": page_type,
                        "page": pagination_page,
                        "more": load_more
                    };


                } else {
                    $("#emptydata").show();
                }
            } catch (e) {
                console.log(e);
                $("#emptydata").show();
            }

            $(element).parent().removeClass("content-loading");
            $(element).parent().find(".loading").hide();

            if (content_loading != null) {
                content_loading.style.display = 'none';
            }

        }
        return linkFunction;
    }

    return directive;
})
tourAgencyApp.directive('boxItem', function (Template) {
    var box_id = 0;
    return {
        restrict: 'E',
        templateUrl: function (element, attrs) {
            var box_type = attrs.boxType;
            box_id = attrs.boxId;
            return  Template.getTemplate(box_type);
        }
    };
})
tourAgencyApp.directive('boxMoreInfo', function ($http, $compile, HttpRequest) {

    return {
        restrict: 'E',
        link: function ($scope, element, attrs) {

            element.bind('click', function ($event) {

                var boxes = document.getElementById("boxes");
                var page_type = attrs.pageType;
                var boxSelectedItem = document.getElementById("box-selected-item");
                var selected_id = attrs.pageId;
                if (boxSelectedItem != null) {
                    var destinations = $scope[page_type];
                    var selectedItem = null;
                    if (destinations != null && destinations.length != 0) {
                        label:
                            for (var i = 0; i < destinations.length; i++) {
                                var dest = destinations[i];
                                if (dest.id == selected_id) {
                                    selectedItem = dest;
                                    break label;
                                }
                            }

                        if (selectedItem != null) {
                            var selected_title = selectedItem.title;
                            var selected_img = selectedItem.img;
                            var selected_content = '<p style="text-align:justify">' + selectedItem.info.replace(/<[^>]*>/g, "") + '</p>';
                            var box = new SelectedPage(selected_id, selected_img, selected_title, selected_content);

                            $scope.$emit('BOX_ITEM_UPDATED', box);
                            $scope.$apply();
                            $("#selectedPage_title")[0].scrollIntoView();
                        }
                    }

                }
                else if (page_type == "hotels") {
                    var params = "?postId=" + selected_id;

                    var region = $("#region").attr('data-region_id');
                    var city = $("#city").attr('data-city_id');
                    var price = $("#price").attr('data-price_id');

                    if (region != null) {
                        params += '&regionId' + region;
                    }
                    if (city != null) {
                        params += '&cityId=' + city;
                    }
                    if (price != null) {
                        params += '&priceId=' + price;
                    }
                    document.location = '/hotel-single.action' + params;
                }
                else if (page_type == "tours" || page_type == 'packages') {
                    var params = "?postId=" + selected_id;

                    var countryid = $("#country").attr('data-countryid');
                    var type = $("#type").attr('data-type');
                    var duration = $("#duration").attr('data-duration');

                    if (countryid != null) {
                        params += '&countryid' + countryid;
                    }
                    if (type != null) {
                        params += '&tourType=' + type;
                    }
                    if (duration != null) {
                        params += '&duration=' + duration;
                    }
                    document.location = '/tour-single.action' + params;
                }
                else if (page_type == "halls") {
                    var params = "?postId=" + selected_id;
                    document.location = '/conference-hall-single.action' + params;
                }
                else if (page_type == "searches") {

                }
                else if (page_type == "republics") {
                    document.location = '/republic.action?postId=' + selected_id;
                }
                else if (page_type == "destinations") {
                    document.location = '/destinations.action?postId=' + selected_id;
                }
            });
        }
    };
})
tourAgencyApp.directive('loadMore', function ($http, $compile, HttpRequest) {
    return {
        restrict: 'E',
        link: function ($scope, element, attrs) {
            element.bind('click', function ($event) {

                document.getElementById("content_loading_load").style.display = '';

                var tempScrollTop = $(window).scrollTop();
                tempScrollTop += 390;

                var boxes = document.getElementById("boxes");

                var box_url = boxes.attributes["box-url"].value;
                var page_type = boxes.attributes["page-type"].value;
                var has_more_info = boxes.attributes["more-info"].value;
                var has_book = boxes.attributes["book"].value;
                var box_search = boxes.attributes["box-search"] != null ? boxes.attributes["box-search"].value : null;

                var box_page = $scope.pagination.page;

                var param = [];

                param['page'] = box_page;
                var box_limit = boxes.attributes["box-limit"].value;
                if (box_limit != null) {
                    param['limit'] = box_limit;
                }

                box_page++;

                var page_category = boxes.attributes["page-category"] != null ? boxes.attributes["page-category"].value : null;
                if (page_category != null) {
                    param['categoryId'] = page_category;
                }

                if (box_search != null) {
                    param['search'] = box_search;
                }

                /*hotels filtering start if exists attach to request params*/
                var page_city = boxes.attributes["page-city"];
                if (page_city != null) {
                    page_city = page_city.value;
                    param['cityId'] = page_city;
                    document.getElementById("city").innerHTML = $scope.selectHotelCity(page_city) + ' <span class="caret"></span>';
                }

                var page_region = boxes.attributes["page-region"];
                if (page_region != null) {
                    page_region = page_region.value;
                    param['regionId'] = page_region;
                    document.getElementById("region").innerHTML = $scope.selectHotelRegion(page_region) + ' <span class="caret"></span>';
                }

                var page_price = boxes.attributes["page-price"];
                if (page_price != null) {
                    page_price = page_price.value;
                    param['priceId'] = page_price;
                    document.getElementById("price").innerHTML = $scope.selectHotelPrice(page_price) + ' <span class="caret"></span>';
                }
                /*hotels filtering end*/

                /*tours filtering start if exists attach to request params*/
                var page_country_id = boxes.attributes["page-countryid"];
                if (page_country_id != null) {
                    page_country_id = page_country_id.value;
                    param['countryId'] = page_country_id;
                    document.getElementById("country").innerHTML = $scope.selectMarkedCountry(page_country_id) + ' <span class="caret"></span>';
                }

                var page_tour_type = boxes.attributes["page-tourtype"];
                if (page_tour_type != null) {
                    page_tour_type = page_tour_type.value;
                    param['tourType'] = page_tour_type;
                    document.getElementById("type").innerHTML = $scope.selectTourTypes(page_tour_type) + ' <span class="caret"></span>';
                }

                var page_duration = boxes.attributes["page-duration"];
                if (page_duration != null) {
                    page_duration = page_duration.value;
                    param['duration'] = page_duration;
                    document.getElementById("duration").innerHTML = $scope.selectTourDurations(page_duration) + ' <span class="caret"></span>';
                }
                /*tours filtering end*/

                var actionDto = HttpRequest.getResponse(param, box_url);
                var dtos = actionDto.response.dtos;
                var load_more = actionDto.response.loadMore;
                $scope.pagination = {
                    "type": page_type,
                    "page": box_page,
                    "more": load_more
                };

                if (dtos != null) {
                    if (page_type == "searches") {
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            page_type = t.pageType;
                            var url_ = "#";
                            if (page_type == "hotels") {
                                url_ = '/hotel-single.action?postId=' + t.id;
                            } else if (page_type == "tours" || page_type == 'packages') {
                                url_ = '/tour-single.action?postId=' + t.id;
                            } else if (page_type == "halls") {
                                url_ = '/conference-hall-single.action?postId=' + t.id;
                            } else if (page_type == "republics") {
                                url_ = '/republic.action?postId=' + t.id;
                                has_book = false;
                            } else if (page_type == "destinations") {
                                url_ = '/destinations.action?postId=' + t.id;
                                has_book = false;
                                content = '';
                            }
                            var box = new Box(t.id, t.postImage, t.title, content, page_type, has_more_info, has_book, url_);
                            $scope[page_type].push(box);
                        }
                    }
                    else if (page_type == "destinations") {
                        var add_trip = boxes.attributes["add-trip"].value;//;attr.addTrip;
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            var box = new Destination(t.id, t.postImage, t.title, content, '', page_type, has_more_info, add_trip);
                            $scope[page_type].push(box);
                        }
                    }
                    else if (page_type == "customdestinations") {
                        var add_trip = boxes.attributes["add-trip"].value;
                        for (var index  in dtos) {

                            var scoped_customdestinations =  $scope[page_type];
                            var customdestination = null;
                            lab:
                            for(var sc in scoped_customdestinations){
                                if(scoped_customdestinations[sc].day_count == index){
                                    customdestination = scoped_customdestinations[sc];
                                    break lab;
                                }
                            }

                            if(customdestination == null){
                                customdestination = {};
                                customdestination.day_count = index;
                                customdestination.destinations = [];
                                for(var sc in scoped_customdestinations){
                                    if(scoped_customdestinations[sc].day_count > index){
                                        $scope[page_type].splice(sc, 0, customdestination);
                                    }
                                }
                                //$scope[page_type].push(customdestination);
                            }

                            var dests = dtos[index];
                            for (var i = 0; i < dests.length; i++) {
                                var t = dests[i];
                                var destination = new Destination(t.id, t.tripImage, t.title, '', t.destinations, page_type, has_more_info, add_trip);
                                customdestination.destinations.push(destination);
                            }

                        }
                    }
                    else {
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            var url_ = "#";
                            if (page_type == "hotels") {
                                url_ = '/hotel-single.action?postId=' + t.id;
                            } else if (page_type == "tours" || page_type == 'packages') {
                                url_ = '/tour-single.action?postId=' + t.id;
                            } else if (page_type == "halls") {
                                url_ = '/conference-hall-single.action?postId=' + t.id;
                            } else if (page_type == "republics") {
                                url_ = '/republic.action?postId=' + t.id;
                                has_book = false;
                            } else if (page_type == "destinations") {
                                url_ = '/destinations.action?postId=' + t.id;
                                has_book = false;
                                content = '';
                            }
                            var box = new Box(t.id, t.postImage, t.title, content, page_type, has_more_info, has_book, url_);
                            $scope[page_type].push(box);
                        }
                    }
                }

                $scope.$apply();

                document.getElementById("content_loading_load").style.display = 'none';
                //window.scrollTo(0,scrollHeight);
                $(window).scrollTop(tempScrollTop);
            });
        }
    };
})
tourAgencyApp.directive('boxBooking', function ($compile, Template) {
    return {
        restrict: 'E',
        templateUrl: function (element, attrs) {
            var box_type = attrs.boxType;
            return  Template.getTemplate(box_type);
        }
    };
})
tourAgencyApp.directive('formButton', function (HttpRequest) {
    return {
        restrict: 'E',
        link: function ($scope, element, attrs) {

            element.bind('click', function ($event) {

                var param = [];

                var action = attrs.action;
                var type = attrs.type;

                var elem = document.getElementById("booking").elements;
                for (var i = 0; i < elem.length; i++) {
                    var input_name = elem[i].name;
                    var input_value = elem[i].value;
                    param[input_name] = input_value;
                    if (document.getElementById(input_name) != null) {
                        document.getElementById(input_name).innerHTML = "";
                    }
                }

                var div_actionMessage = document.getElementById("actionmessage");
                var div_actionerror = document.getElementById("actionerror");

                div_actionMessage.innerHTML = "";
                div_actionerror.innerHTML = "";

                div_actionMessage.className = "";
                div_actionerror.className = "";

                var actionDto = HttpRequest.getResponse(param, action, type);
                var status = actionDto.responseStatus;
                if (status == "SUCCESS") {
                    /*$("#post_id").val("");
                     $(".booking-modal").modal('hide');*/
                    div_actionMessage.innerHTML = actionDto.actionmessage;
                    div_actionMessage.className = div_actionMessage.className + " actionMessage";

                } else if (status == "INVALID_PARAMETER") {

                    var fielderrors = actionDto.fielderrors;
                    var msg = "";
                    div_actionerror.className = div_actionerror.className + " actionError";
                    div_actionerror.innerHTML = actionDto.actionerror;
                    for (var fielderror in fielderrors) {
                        msg += fielderrors[fielderror] + "  " + "\n";
                    }
                    div_actionerror.innerHTML = msg;
                } else if (status == "INTERNAL_ERROR") {
                    div_actionerror.className = div_actionerror.className + " actionError";
                    div_actionerror.innerHTML = actionDto.actionerror;
                }
            })
        }
    };
})
tourAgencyApp.directive('bookButton', function (HttpRequest) {
    return {
        restrict: 'E',
        link: function ($scope, element, attrs) {

            element.bind('click', function ($event) {

                $('#content_modal_loading').show();

                try {
                    var param = [];

                    var action = attrs.action;
                    var type = attrs.type;

                    var elem = document.getElementById("booking").elements;
                    for (var i = 0; i < elem.length; i++) {
                        var input_name = elem[i].name;
                        var input_value = elem[i].value;
                        param[input_name] = input_value;
                        if (document.getElementById(input_name) != null) {
                            document.getElementById(input_name).innerHTML = "";
                        }
                    }

                    var modalBodyText = document.getElementById("modalBodyText");
                    var modalBodyTextDesc = document.getElementById("modalBodyTextDesc");

                    var modalBody = document.getElementById("modalBody");
                    var modalHeader = document.getElementById("modalHeader");

                    modalBodyText.innerHTML = "";
                    modalBodyTextDesc.innerHTML = "";
                    modalBody.className = "modal-body";

                    if (modalHeader != null) {
                        modalHeader.className = "modal-header";

                    }

                    var actionDto = HttpRequest.getResponse(param, action, type);
                    var status = actionDto.responseStatus;
                    if (status == "SUCCESS") {
                        modalBodyText.innerHTML = actionDto.actionmessage;
                        modalBodyTextDesc.innerHTML = actionDto.response.dto;
                        modalBody.className += ' alert-success  ';
                        /*text-success*/

                        if (modalHeader != null) {
                            modalHeader.className += ' alert-success ';
                            /*text-success */
                        }
                    } else if (status == "INVALID_PARAMETER") {
                        var fielderrors = actionDto.fielderrors;
                        var msg = "";
                        modalBodyText.innerHTML = actionDto.actionerror;
                        for (var fielderror in fielderrors) {
                            msg += fielderrors[fielderror] + "  " + "\n";
                        }
                        modalBodyText.innerHTML = msg;
                        modalBody.className += '  alert-danger ';
                        /*text-warning*/

                        if (modalHeader != null) {
                            modalHeader.className += '  alert-danger ';
                            /*text-warning*/
                        }

                    } else if (status == "INTERNAL_ERROR") {
                        modalBodyText.innerHTML = actionDto.actionerror;
                        modalBody.className += '  alert-danger ';
                        /*text-warning*/
                        if (modalHeader != null) {
                            modalHeader.className += '  alert-danger ';
                            /*text-warning*/
                        }
                    }
                } catch (e) {
                    console.log("as", e);
                } finally {
                    $('#content_modal_loading').hide();
                    if (modalHeader != null && modalBody != null) {
                        $('#myModal').modal('show');
                    }
                }

            })
        }
    };
})
tourAgencyApp.directive('boxSelectedItem', function ($http, $compile, HttpRequest, Template) {

    var pageType, selectedId = 0, selected_title, selected_img, selected_content, add_trip, has_more_info;

    return {
        restrict: 'E',
        templateUrl: function (element, attrs) {
            pageType = attrs.pageType;
            selectedId = attrs.selectedId;
            add_trip = attrs.addTrip;
            has_more_info = attrs.moreInfo;
            return  Template.getTemplate("selected_page");
        },
        controller: function ($scope) {
            var box = null;
            if (selectedId == null || selectedId == 0 || selectedId.length == 0) {
                //there are not selected item
                if (pageType == 'customdestinations') {
                    //check if customdestinations first element has destinasions
                   /* if ($scope[pageType] != null && $scope[pageType][0] != null && $scope[pageType][0].destinations != null) {
                        var dests = $scope[pageType][0].destinations[0].destinations;
                        for (var d in dests) {
                            //check if destinations element is valid
                            if (dests[d] != null) {
                                var j = 0;
                                while (dests[d][j] == null) {
                                    j++;
                                }
                                selectedId = dests[d][0].id;
                                selected_title = dests[d][0].title;
                                selected_img = dests[d][0].postImage;
                                selected_content = '<p style="text-align:justify">' + dests[d][0].content.replace(/<[^>]*>/g, "") + '</p>';
                                box = new SelectedPage(selectedId, selected_img, selected_title, selected_content);
                            }
                            break;
                        }
                    }*/
                } else {
                    selectedId = $scope[pageType][0].id;
                    selected_title = $scope[pageType][0].title;
                    selected_img = $scope[pageType][0].img;
                    selected_content = '<p style="text-align:justify">' + $scope[pageType][0].info.replace(/<[^>]*>/g, "") + '</p>';
                    box = new SelectedPage(selectedId, selected_img, selected_title, selected_content);
                }

            }
            else {
                //find selected destination on destinations
                var destinations = $scope[pageType];
                var selectedItem = null;
                if (destinations != null && destinations.length != 0) {
                    label:
                        for (var i = 0; i < destinations.length; i++) {
                            var dest = destinations[i];
                            if (dest.id == selectedId) {
                                selectedItem = dest;
                                break label;
                            }
                        }
                    //found selected destination on page                     
                    if (selectedItem != null) {
                        selected_title = selectedItem.title;
                        selected_img = selectedItem.img;
                        selected_content = '<p style="text-align:justify">' + selectedItem.info.replace(/<[^>]*>/g, "") + '</p>';
                        box = new SelectedPage(selectedId, selected_img, selected_title, selected_content);
                    }
                    //not found selected destination on page
                    // the case usually will be after searching, when  chosen a destination , this case will try to find on server
                    else {
                        var param = [];
                        param['postId'] = selectedId;
                        var actionDto = HttpRequest.getResponse(param, ACTION_DESTINATION);
                        if (actionDto != null && actionDto.response != null && actionDto.response.dto != null) {
                            var dto = actionDto.response.dto;
                            var content = '<p style="text-align:justify">' + dto.shortContent.replace(/<[^>]*>/g, "") + '</p>';
                            box = new SelectedPage(selectedId, dto.postImage, dto.title, content);
                        }
                        //the case when not found any destination destinations.action?postId=2300
                        /*else {
                         selectedId = $scope[pageType][0].id;
                         selected_title = $scope[pageType][0].title;
                         selected_img = $scope[pageType][0].img;
                         selected_content = $scope[pageType][0].info;
                         box  = new SelectedPage (selectedId, selected_img, selected_title, selected_content);
                         }*/
                    }
                }
            }

            /*if($scope[pageType]!= null && box != null){*/
            if ($scope[pageType] != null) {
                $scope.selectedPage = box;
                $scope.$on('BOX_ITEM_UPDATED', function (e, data) {
                    $scope.selectedPage = data;
                });
            } else {
                return
            }
        }
    };
})
