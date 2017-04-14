moduls_array.push('ngSanitize');
moduls_array.push( 'ngTable');
moduls_array.push('isteven-multi-select');
// moduls_array.push( 'ngTableDemos');
console.log("moduls_array",moduls_array);

controllers.listController = ['$scope', '$http', '$filter', '$window', '$sce','ngTableParams','$timeout', function($scope, $http, $filter, $window, $sce, ngTableParams, $timeout) {

    $scope.item = [];
    $scope.image = [];
    $scope.columns = columns;
    $scope.isteven_branches = typeof isteven_branches === 'undefined' ? null : isteven_branches;

    // var check_box_container_height = $('.checkBoxContainer').height;

    var set_interval_function = setInterval(check_if_function_work, 1000);
    function check_if_function_work() {

        if ($('.checkBoxContainer').length) {
            $('.checkBoxContainer').bind('scroll',chk_scroll);

            function chk_scroll(e)
            {
                var elem = $(e.currentTarget);
                if (elem[0].scrollHeight - Math.floor(elem.scrollTop()) == elem.outerHeight())
                {
                    alert('bottom');
                }
            }
            clearInterval(set_interval_function);
        }

    }
    
    $scope.tableParams = new ngTableParams (
        {page: 1, count: 10, sorting: {name: 'asc'}},
        {total: 0,
            getData: function($defer, params) {
                var path = $scope.actionPath;
                var orderBy = 'name';
                var orderType = 'asc';

                var sorting = params.sorting();
                for(var key in sorting){
                    orderBy = key;
                    orderType = sorting[key] ;
                }

                var requestJson  = {
                    page : params.page(),
                    count : params.count(),
                    orderBy : orderBy,//addresss :desc
                    orderType : orderType,
                    group : params.group,
                    groupBy : params.groupBy
                };

                if(params.filter() != null && params.filter().length != null){
                    requestJson.filter = params.filter();
                }

                if($scope.isteven_branches != null){
                    var ides = [];
                    var branchesOutPut = $scope.isteven_branches[0].outPut;
                    for(var id in branchesOutPut){
                       ides.push(branchesOutPut[id].id);
                        console.log('branchesOutPut[id]', branchesOutPut[id].id);
                    }
                    requestJson.branchIdes = ides.toString();
                }

                 $scope.show_loader();

                requestJson =  JSON.stringify(requestJson);

                $http({
                    method: 'post',
                    url: path,
                    data :  {
                        requestJson : requestJson
                    },
                    dataType: 'json'
                }).then(
                    function(response) {

                        var result = response.data.dto;


                        if (result.responseStatus == 'SUCCESS') {

                            var listItems = result.response.data;
                            $scope.itemsCount = result.response.dataCount;

                            console.log('listItems', listItems)

                            params.total($scope.itemsCount);
                            // params.total(listItems.length);

                            // use build-in angular filter
                            var sortedItems = params.sorting()
                                ? $filter('orderBy')(listItems, params.orderBy()[0])
                                : listItems;
                            $defer.resolve(sortedItems);
                        }
                    }
                ).finally(function() {
                $scope.hide_loader();
                    $scope.serch_val="";
                    
                });

                // hides count tools as items is less than 10
                if ($scope.itemsCount < 10) {
                    $(".ng-table-pager").hide();
                }
            }
        }
    );

    $scope.add_new_records = function (id_type) {
        var href = "#";
        if(id_type == "sketch"){
            href = "/sketch-add-view.htm";
        }
        window.location = href;
    };

    $scope.deleteSelectedRow = function (id_type) {

        document.getElementById("delete-form").remove();

        var form = document.createElement("form");
        form.id = "delete-form";
        form.method = "POST";

        var ides =  $scope.selected.join();
        var element = document.createElement("input");

        if(id_type == "sketch"){
            form.action = "sketch-delete.htm";
            element.value=ides;
            element.name="sketchIdes";
        }

        form.appendChild(element);

        document.body.appendChild(form);

        form.submit();

    };

}]