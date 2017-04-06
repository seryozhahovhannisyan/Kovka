controllers.currentModalContainerCtrl = function() {
    var vm = this;
    vm.modalDefaultSizeIcon = context + '/img/branches/maximize.png';
    var modalMaximizeIcon = context + '/img/branches/minimize.png';
    var modalMinimizeIcon = context + '/img/branches/maximize.png';
    var maximizeMinimize = false;
    vm.modalDefaultStyle = {
    };
    var screen_height = screen.height;
   
    function modalMaximizeMinimizeToggleIcon(src){
        vm.modalDefaultSizeIcon = src;
    }

    function modalMaximizeMinimizeToggleSize(style) {
        vm.modalDefaultStyle = style;
    }

    vm.restoreModal = function (){
        if (!maximizeMinimize) {
            modalMaximizeMinimizeToggleIcon(modalMaximizeIcon);
            modalMaximizeMinimizeToggleSize({
                "width" : '100%',
                "margin":0,
                'height':screen_height + 'px'
            });
        } else {
            modalMaximizeMinimizeToggleIcon(modalMinimizeIcon);
            modalMaximizeMinimizeToggleSize({

            });
        }
        maximizeMinimize = !maximizeMinimize;
    } ;

   


};



 function add_modal_maximize_minimize(){
        
        var flag = new Boolean(true);
        var screen_height = screen.height;
        var modalMaximizeIcon = context + '/img/branches/minimize.png';
        var modalMinimizeIcon = context + '/img/branches/maximize.png';
    
        function func1() {
            $('.resizable_style').css({
                "width": '100%',
                "margin": 0,
                'height': screen_height + 'px'
    
            });
        };
        function func2() {
            $('.resizable_style').css({
                "width": '',
                "margin": '',
                'height': ''
            });
        };
    
     (function modal_minimize() {
            $('.add_modal_minimize').click(function () {
                $(".close_modal").trigger("click");
                $('.main_footer').prepend(
                    '<div  class="link_to_modal_parent">' +
                    '<div class="link_to_modal">' +
                    '<div class="link_to_modal_title"> add new record</div>' +
                    '<div class="link_to_modal_icons_block">' +
                    '<button data-dismiss="modal" class="close link_to_modal_parent_close" type="button"><span aria-hidden="true">×</span></button>' +
                    '<div class="link_to_modal_maximize_modal " data-target="#add" data-toggle="modal" >' +
                    '<img alt="Maximize/Minimize" src="' + context + '/img/branches/maximize.png">' +
                    '</div>' +
                    '<div class="link_to_modal_restore" data-target="#add" data-toggle="modal">' +
                    '<i class="glyphicon glyphicon-minus"></i>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>'
                );
    
                link_to_modal_close();
                link_to_modal_maximize();
                link_to_modal_restore();
    
            });
        })();
    
     (function add_new_record_click_modal_open() {
            $('.add_div_brch').click(function () {
                $('.link_to_modal_parent').remove();
                flag = true;
                $('.add_modal_restore img').attr('src', $('.add_modal_restore img').attr('src').replace(modalMaximizeIcon, modalMinimizeIcon));
                func2();
            });
    
        } )();

     
    
    
     (function restore_modal() {
    
            $('.add_modal_restore img').click(function () {
                if (flag) {
                    flag = false;
                    $(this).attr('src', $(this).attr('src').replace(modalMinimizeIcon, modalMaximizeIcon));
                    func1();
                } else {
                    flag = true;
                    $(this).attr('src', $(this).attr('src').replace(modalMaximizeIcon, modalMinimizeIcon));
                    func2();
                }
            });
    
        })();
    
    
        function link_to_modal_close() {
            $('.link_to_modal_parent_close').click(function () {
                $(this).parent('.link_to_modal_icons_block').parent('.link_to_modal').parent('.link_to_modal_parent').remove();
            });
        };
    
        function link_to_modal_restore() {
            $('.link_to_modal_restore').click(function () {
                $(this).parent('.link_to_modal_icons_block').parent('.link_to_modal').parent('.link_to_modal_parent').remove();
                func2();
                $('.add_modal_restore img').attr('src', $('.add_modal_restore img').attr('src').replace(modalMaximizeIcon, modalMinimizeIcon));
                flag = true;
            });
        }
    
        function link_to_modal_maximize() {
            $('.link_to_modal_maximize_modal img').click(function () {
    
                $(this).parent('.link_to_modal_maximize_modal').parent('.link_to_modal_icons_block').parent('.link_to_modal').parent('.link_to_modal_parent').remove();
    
                func1();
                $('.add_modal_restore img').attr('src', $(this).attr('src').replace(modalMinimizeIcon, modalMaximizeIcon));
                flag = false;
            });
    
        };

};