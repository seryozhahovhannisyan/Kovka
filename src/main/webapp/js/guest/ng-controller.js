$(document).ready(function () {

})

var TEMPLATE_ROOT_DIRECTORY = '/js/guest/template';

generalControllers.homeCtrl = ['$rootScope', '$scope', '$sce', '$http', function ($rootScope, $scope, $sce, $http) {

    $scope.sketches = [];
    $scope.articles = [];
    $scope.searches = [];
    $scope.machines = [];
    $scope.selectedPage = {};

    $scope.loadScrip_ = function() {
        $("area[rel^='prettyPhoto']").prettyPhoto();

        $("a[rel^='prettyPhoto']").prettyPhoto({
            default_width: 640,
            default_height: 419
        });
    };

    $scope.pretty_machine = function() {

        console.log('pretty_machine');

        $("area[rel^='prettyPhoto']").prettyPhoto();

        $("a[rel^='prettyPhoto']").prettyPhoto({
            default_width: 640,
            default_height: 419
        });
    };

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
                                        var selected_img = desItem[d].image;
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


}];

kovkaApp.factory('Template', function () {
    var template = {};

    template.getTemplate = function (contentType) {

        var small = TEMPLATE_ROOT_DIRECTORY + '/sketch_box_small.html';
        var search = TEMPLATE_ROOT_DIRECTORY + '/search-box.html';
        var selected = TEMPLATE_ROOT_DIRECTORY + '/selected.html';

        var template = '';
        switch (contentType) {
            case 'small':
                template = small;
                break;
            case 'search':
                template = search;
                break;
            case 'selected_page':
                template = selected;
                break;
        }
        console.log('template', template)
        return template;
    }

    return template;
});

kovkaApp.directive('pageFilter', function ($http, HttpRequest) {
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
});
kovkaApp.directive('ngLocale', function () {
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
});
kovkaApp.directive('placehold', function () {
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
kovkaApp.directive('boxes', function ($http) {
    var directive = {};
    directive.restrict = 'EA';
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
                var box_type = attr.boxType;

                var has_more_info = attr.moreInfo;
                var has_book = attr.book;

                var requestJson = {};
                if (box_page != null && box_page > -1) {
                    requestJson.page = box_page;
                }
                requestJson.type = page_type;
                /*tours filtering end*/

                var box_count = attr.boxCount;
                if (box_count != null) {
                    requestJson.count = box_count;
                }

                var box_search = attr.boxSearch;
                if (box_search != null) {
                    requestJson.search = box_search;
                }
                requestJson = JSON.stringify(requestJson);
                $http({
                    method: 'post',
                    url: box_url,
                    data: {
                        requestJson: requestJson
                    },
                    dataType: 'json'
                }).then(
                    function (response) {
                        var result = response.data.dto;
                        if (result.responseStatus == 'SUCCESS') {
                            var dtos = result.response.data;
                            var load_more = result.loadMore;
                            var pagination_page = dtos.length / 4;
                            console.log('dtos.length', dtos.length)
                            console.log('page_type', page_type)
                            console.log('box_type', box_type)
                            for (var i = 0; i < dtos.length; i++) {
                                var t = dtos[i];
                                var url_ = "#";
                                if (page_type == "sketches" || page_type == "articles") {
                                    url_ = '/sketch-single.htm?id=' + t.id;
                                }

                                var box = null;
                                var id = t.id;
                                if (box_type == "small") {
                                    box = new Box(id, t.image, t.name, t.shortDesc, null, null, page_type, has_more_info, has_book, url_);
                                } else if (box_type == "search") {
                                    box = new Box(id, t.image, t.name, null, null, null, page_type, has_more_info, has_book, url_);
                                } else if (box_type == "link") {
                                    box = new Box(id, null, null, null, t.title, null, null, null, null, null);
                                }
                                $scope[page_type].push(box);
                            }
                        } else {
                            $("#emptydata").show();
                        }
                    }
                ).finally(function () {
                    //$scope.hide_loader();
                });

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
});
kovkaApp.directive('machine', function ($http) {
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
                $http({
                    method: 'post',
                    url: '/load-machines.htm',
                    dataType: 'json'
                }).then(
                    function (response) {
                        var result = response.data.dto;
                        if (result.responseStatus == 'SUCCESS') {
                            var dtos = result.response.data;
                            for (var i = 0; i < dtos.length; i++) {
                                var t = dtos[i];
                                $scope['machines'].push(t);
                            }
                        } else {
                            //$("#emptydata").show();
                        }
                    }
                ).finally(function () {
                    //$scope.hide_loader();
                });

            } catch (e) {
                alert('machine' + e)
                console.log(e);
                //$("#emptydata").show();
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
});
kovkaApp.directive('boxItem', function (Template) {
    var box_id = 0;
    return {
        restrict: 'E',
        templateUrl: function (element, attrs) {
            var box_type = attrs.boxType;
            box_id = attrs.boxId;
            return Template.getTemplate(box_type);
        }
    };
});
kovkaApp.directive('boxMoreInfo', function ($http, $compile, HttpRequest) {

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
});
kovkaApp.directive('loadMore', function ($http, $compile, HttpRequest) {
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
                            var box = new Box(t.id, t.image, t.title, content, page_type, has_more_info, has_book, url_);
                            $scope[page_type].push(box);
                        }
                    }
                    else if (page_type == "destinations") {
                        var add_trip = boxes.attributes["add-trip"].value;//;attr.addTrip;
                        for (var i = 0; i < dtos.length; i++) {
                            var t = dtos[i];
                            var content = t.shortContent;
                            var box = new Destination(t.id, t.image, t.title, content, '', page_type, has_more_info, add_trip);
                            $scope[page_type].push(box);
                        }
                    }
                    else if (page_type == "customdestinations") {
                        var add_trip = boxes.attributes["add-trip"].value;
                        for (var index  in dtos) {

                            var scoped_customdestinations = $scope[page_type];
                            var customdestination = null;
                            lab:
                                for (var sc in scoped_customdestinations) {
                                    if (scoped_customdestinations[sc].day_count == index) {
                                        customdestination = scoped_customdestinations[sc];
                                        break lab;
                                    }
                                }

                            if (customdestination == null) {
                                customdestination = {};
                                customdestination.day_count = index;
                                customdestination.destinations = [];
                                for (var sc in scoped_customdestinations) {
                                    if (scoped_customdestinations[sc].day_count > index) {
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
                            var box = new Box(t.id, t.image, t.title, content, page_type, has_more_info, has_book, url_);
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
});
kovkaApp.directive('boxBooking', function ($compile, Template) {
    return {
        restrict: 'E',
        templateUrl: function (element, attrs) {
            var box_type = attrs.boxType;
            return Template.getTemplate(box_type);
        }
    };
});
kovkaApp.directive('formButton', function (HttpRequest) {
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
});
kovkaApp.directive('bookButton', function (HttpRequest) {
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
});
kovkaApp.directive('boxSelectedItem', function ($http, $compile, Template) {

    var selectedItem, pageType, boxUrl, selectedId = 0;

    return {
        restrict: 'E',
        link: function(scope, element, attr) {
            console.log('link');
            $("area[rel^='prettyPhoto']").prettyPhoto();

            $("a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true});
        },
        templateUrl: function (element, attrs) {
            pageType = attrs.pageType;
            selectedId = attrs.selectedId;
            boxUrl = attrs.boxUrl;
            return Template.getTemplate("selected_page");
        },
        controller: function ($rootScope, $scope) {

            //find selected destination on destinations
            var destinations = $scope[pageType];
            if (destinations != null && destinations.length != 0) {
                label:
                    for (var i = 0; i < destinations.length; i++) {
                        var dest = destinations[i];
                        if (dest.id == selectedId && dest.title != null) {
                            selectedItem = dest;
                            break label;
                        }
                    }
            }

            if (selectedItem == null) {

                try {
                    var requestJson = {id: selectedId};
                    requestJson = JSON.stringify(requestJson);
                    $http({
                        method: 'post',
                        url: boxUrl,
                        data: {
                            requestJson: requestJson
                        },
                        dataType: 'json'
                    }).then(
                        function (response) {
                            var result = response.data.dto;
                            if (result.responseStatus == 'SUCCESS') {
                                var t = result.response.data;

                                if (t != null) {

                                    var id = t.id;
                                    var selectedItem = new Box(id, null, t.name, t.shortDesc, t.title, t.description, pageType, null, null, null);

                                    if (t.images != null) {
                                        for (var i = 0; i < t.images.length; i++) {
                                            selectedItem.addImg(t.images[i]);
                                        }
                                    }

                                    if (t.products != null) {
                                        for (var i = 0; i < t.products.length; i++) {
                                            selectedItem.addProduct(new Product(t.products[i].price, t.products[i].image));
                                        }
                                        selectedItem.initViewProducts(6);
                                    }

                                    //$scope[pageType][id] = selectedItem;
                                    $scope.selectedPage = selectedItem;
                                }

                            } else {
                                $("#emptydata").show();
                            }
                        }
                    ).finally(function () {
                        //$scope.hide_loader();
                    });
                } catch (e) {

                }
            }

            /*if($scope[pageType]!= null && box != null){*/
            if ($scope[pageType] != null) {
                $scope.$on('BOX_ITEM_UPDATED', function (e, data) {
                    $scope.selectedPage = data;
                });
            } else {
                return
            }
        }
    };
});
