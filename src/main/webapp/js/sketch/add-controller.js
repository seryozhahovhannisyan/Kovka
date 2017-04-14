
moduls_array.push('summernote');

controllers.CallbacksCtrl = ['$scope', function ($scope) {

    $scope.optionsSummernote = {
        height: 400,
        minHeight: 400,             // set minimum height of editor
        maxHeight: 400,
        toolbar: [
            ['edit',['undo','redo']],
            ['headline', ['style']],
            ['style', ['bold', 'italic', 'underline', 'superscript', 'subscript', 'strikethrough', 'clear']],
            ['fontface', ['fontname']],
            ['textsize', ['fontsize']],
            ['fontclr', ['color']],
            ['alignment', ['ul', 'ol', 'paragraph', 'lineheight']],
            ['insert', ['picture','video','hr']]

        ]
    };
    $scope.summer_value;
    $scope.init = function () {
        console.log('Summernote is launched');
    };
    $scope.enter = function () {
        console.log('Enter/Return key pressed');
    };
    $scope.focus = function (e) {
        console.log('Editable area is focused');
    };
    $scope.blur = function (e) {
        console.log('Editable area loses focus');
    };
    $scope.paste = function (e) {
        console.log('Called event paste: ' + e.originalEvent.clipboardData.getData('text'));
    };
    $scope.change = function (contents) {
        console.log('contents are changed:', contents, $scope.editable);
        $scope.summer_value = contents;
    };
    $scope.keyup = function (e) {
        console.log('Key is released:', e.keyCode);

    };
    $scope.keydown = function (e) {
        console.log('Key is pressed:', e.keyCode);
    };
    $scope.imageUpload = function (files) {
        console.log('image upload:', files);
        console.log('image upload\'s editor:', $scope.editor);
        console.log('image upload\'s editable:', $scope.editable);
    };
}];
