moduls_array.push('isteven-multi-select');
moduls_array.push('summernote');
controllers.callbacksCtrl = ['$scope', function ($scope) {

    $scope.optionsSummernote = {
        height: 400,
        minHeight: 400,             // set minimum height of editor
        maxHeight: 400,
        toolbar: [
            ['edit', ['undo', 'redo']],
            ['headline', ['style']],
            ['style', ['bold', 'italic', 'underline', 'superscript', 'subscript', 'strikethrough', 'clear']],
            ['fontface', ['fontname']],
            ['textsize', ['fontsize']],
            ['fontclr', ['color']],
            ['alignment', ['ul', 'ol', 'paragraph', 'lineheight']],
            ['insert', ['picture', 'video', 'hr']]

        ]
    };

    $scope.summer_value;

    $scope.change = function (contents) {
        $scope.summer_value = contents;
    };

}];


controllers.adminCompanies = ['$scope', '$window', '$document', '$timeout', '$compile','$interval', function ($scope, $window, $document, $timeout, $compile,$interval) {

    $scope.footerplace = function () {
        $scope.footer = angular.element('.main_footer');
        // $scope.footer.removeClass("")
        $scope.doc_height = Math.max(
            $document[0].body.scrollHeight, $document[0].documentElement.scrollHeight,
            $document[0].body.offsetHeight, $document[0].documentElement.offsetHeight,
            $document[0].body.clientHeight, $document[0].documentElement.clientHeight
        );
        $scope.win_height = $window.innerHeight;
        $scope.form = angular.element('.form_div_conteiner  ');
        $scope.footer = angular.element('.main_footer');
        $scope.content = angular.element('.content');
        $scope.footer_height = $scope.footer.outerHeight(true);
        $scope.content_height = $scope.content.outerHeight(true);

        // $scope.content_height = $scope.win_height - $scope.footer_height;

        console.log("$scope.win_height", $scope.win_height, " $scope.content_height", $scope.content_height);

        if ($scope.win_height < $scope.content_height + $scope.footer_height) {
            $scope.footer.removeClass("fixed");
            $scope.content.css("margin-bottom", "20px")

        }
        else {
            // $scope.content.css("height", $scope.content_height);
            $scope.footer.addClass("fixed");
        }
    };

    // $scope.footerplace();


    $scope.select_partition = {
        nothingSelected: "allowed partition values"
    };
    $scope.select_currency = {
        nothingSelected: "Select currency type"
    };
    $scope.select_rate = {
        nothingSelected: "Select rate"
    };

//partition type
    $scope.partitionType = [];
    angular.forEach(partition_type, function (value, key) {
        $scope.partitionType.push({
                name: value.partition_name,
                id: value.partition_id,
                ticked: false
            }
        );
    });

    $scope.addPartition = function () {
        var partition_array = [];
        for(var i = 0; i < $scope.partitionTypeOut.length; i++){
            partition_array.push($scope.partitionTypeOut[i].id);
        }
        $scope.partition = partition_array.join("$");
    };


//currency type
    $scope.cuerencyType = [];
    angular.forEach(cuerency_type, function (value, key) {
        $scope.cuerencyType.push({
                name: value.company_name,
                id: value.company_id,
                ticked: false
            }
        );
    });
    $scope.addCurrency = function () {

        var cuerencyTypeVal = 0;
        for(var i = 0; i < $scope.cuerencyTypeOut.length; i++){
            cuerencyTypeVal =  $scope.cuerencyTypeOut[i].id
        }
        $scope.currency = cuerencyTypeVal;
    };


    //availableRateValues
    $scope.availableRateValues = [];
    angular.forEach(cuerency_type, function (value, key) {
        $scope.availableRateValues.push({
                name: value.company_name,
                id: value.company_id,
                ticked: false
            }
        );
    });

    $scope.addRatevalue = function () {

        var rate_array = [];
        for(var i = 0; i < $scope.availableRateValuesOut.length; i++){
            rate_array.push($scope.availableRateValuesOut[i].id);
        }
        $scope.rate = rate_array.join("$");
    };

    $scope.remote_address = [];


    var aded_field_count = 1;
    $scope.plus = function () {
        aded_field_count++;
        // var address_array = [];
        var field = angular.element(".add_input");
        field.after("<input type = 'text' placeholder='response remote addresses'   ng-model = 'res_address_added" + aded_field_count + "'  ng-blur = 'blur_input_addres()' required class='added_input'/>");
        var aded_fields = angular.element(".added_input");
        $compile(aded_fields)($scope)
    };

    $scope.blur_input_addres = function () {
        $scope.addres_string = "";
        var address_array = [];
        var aded_fields = angular.element(".added_input");
        for(var t=0; t < aded_fields.length; t++){
            var ng_model_added = aded_fields[t].attributes[2].value;
            address_array.push($scope[ng_model_added]);
        }
        $scope.addres_string = $scope.res_address+"$"+address_array.join("$");

    };


    //form submit
    // $scope.submit_company_form = function (form) {
    //     // $rootScope.show_loader();
    //     // event.preventDefault();
    //
    //     console.log("submited", form);
    //
    //     // form.$submitted = false;
    //     // if(form.$invalid){
    //     //     event.preventDefault();
    //     //     $rootScope.hide_loader();
    //     //     form.$submitted = true;
    //     //     return
    //     // }
    //
    // }

}];

mainApp.directive('fileModel', ['$parse', '$http','$timeout', function ($parse, $http,$timeout) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {

            console.log("element[0].files", element[0]);

            // scope.drag_true = true;
            // scope.remove_true = false;
            // scope.upload_success = false;
            // scope.upload_remove_succsses = false;
            // scope.upload_error = false;

            // angular.element(".remove").bind('click', function () {
            //     $timeout(function () {
            //         scope.drag_true = true;
            //         scope.remove_true = false;
            //         console.log( scope.remove_true, scope.drag_true)
            //         var file = scope.fileInfo;
            //         var formDatas = new FormData();
            //
            //         // formDatas.append('resource', 'company');
            //         formDatas.append('removeFileName',  file.name);
            //         $http.post("remove-mixed-uploaded.htm", formDatas, {
            //             transformRequest: angular.identity,
            //             headers: {'Content-Type': undefined}
            //         })
            //
            //             .success(function () {
            //                 console.log("exav")
            //                 scope.up_img = ""
            //                 scope.upload_success = false;
            //                 scope.upload_remove_succsses = true;
            //                 scope.upload_error = false;
            //
            //                 console.log(scope.fileInfo.name)
            //             })
            //             .error(function () {
            //             });
            //
            //     },10);
            // });

            element.bind('change', function () {
                $parse(attrs.fileModel).assign(scope, element[0].files[0]);
                scope.$apply();
                // scope.up_img;
                var file = scope.fileInfo;
                console.log('file is ');
                console.log(file);
                var uploadUrl = "upload-agreement-document.htm";
                var formDatas = new FormData();
                console.log("formDatas", formDatas);
                console.log("file file", file);
                console.log("file file.name", file.name);
                formDatas.append('datas', file, file.name);
                formDatas.append('resource', 'company');
                console.log("form data", formDatas);

                $http.post(uploadUrl, formDatas, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })

                    .success(function () {
                        // scope.drag_true = false;
                        // scope.remove_true = true;
                        // scope.up_img = "view-mixed-data?resource=company&datasFileName=" + file.name;
                        // scope.upload_success = true;
                        // scope.upload_remove_succsses = false;
                        console.log("uploaded")

                    })
                    .error(function () {
                        // scope.upload_error = true;
                        console.log("chexav")
                    });

            });
        }
    };
}]);