var selectedPostId = 0;

$(document).ready(function() {
    $('.even').removeClass('even');
    if($('td').css('display') == 'none'){

    }
    car_index = 3;
    cars_size = parseInt(cars_size);

    $('.cars-slide-box').slick({
        slidesToShow: 1,
        slidesToScroll: 1
    });
    $('.slick-prev').on('mouseover',function(){
        $(this).css("background"," none repeat scroll 0 0 #ef4a23");
    });
    $('.slick-next').on('mouseover',function(){
        $(this).css("background"," none repeat scroll 0 0 #ef4a23");
    });
    $('.slick-prev').on('mouseout',function(){
        $(this).css("background"," none repeat scroll 0 0 #00abc8");
    });
    $('.slick-next').on('mouseout',function(){
        $(this).css("background"," none repeat scroll 0 0 #00abc8");
    });
});

Number.prototype.round = function (places) {
    return +(Math.round(this + "e+" + places) + "e-" + places);
}

function exchangeRate(currentRate, currencyType) {

    try {

        if (currentRate == 'AMD') {
            $(".priceSeasonVal").each(function (index) {

                var amd = $(this).attr('data-amd');
                var amdVal = $(this).attr('data-amdVal');
                var amdRest = $(this).attr('data-amdRest');
                if (amdVal != null && amdVal != -1 && amdRest != null) {
                    $(this).text(amdVal.trim() + '.' + amdRest.trim());
                }
                else {
                    //for backend error case
                    amd = amd.trim();
                    var priceToShow = '';

                    var prices;

                    if (amd.indexOf(".") > -1) {
                        prices = amd.split('.');
                    }
                    else if (amd.indexOf(" ") > -1) {
                        prices = amd.split(' ');
                    }
                    else {
                        $(this).text(amd.trim());
                        return;
                    }

                    if(prices.length == 0){
                        priceToShow = ' - ';
                        $(this).text(priceToShow);
                        return;
                    }
                    else {
                        for (var key = 0; key < prices.length; key++) {

                            var price = prices[key];
                            priceToShow += price.trim();

                            if (key < prices.length - 1) {
                                priceToShow += '.';
                            }
                        }
                    }
                    $(this).text(priceToShow);
                }
            });
        }
        else {
            $(".priceSeasonVal").each(function (index) {
                var amd = $(this).attr('data-amd');
                var amdVal = $(this).attr('data-amdVal');
                if (amdVal != -1){

                    amd = amd.trim();
                    var priceToShow = '';
                    var prices = amd.split('-');
                    for (var key = 0; key < prices.length; key++) {

                        var priceVal = '';
                        var pn = null;

                        var price = prices[key];
                        price = price.trim();
                        if (price.indexOf(".") > -1) {
                            pn = price.split('.');
                        }
                        else if (price.indexOf(" ") > -1) {
                            pn = price.split(' ');
                        }
                        else {
                            priceVal = price;
                        }

                        if (pn != null) {
                            priceVal = pn[0];
                            for (var k = 1; k < pn.length; k++) {
                                var pnk = pn[k];
                                if (pnk.length < 3) {
                                    for (var j = pnk.length; j < 3; j++) {
                                        pnk += '0';
                                    }
                                }
                                priceVal += pnk;
                            }
                        }

                        priceVal = parseFloat(priceVal);
                        currentRate = parseFloat(currentRate);

                        price = priceVal / currentRate;
                        priceToShow += price.round(2);
                        if (key < prices.length - 1) {
                            priceToShow += ' - ';
                        }
                    }
                    $(this).text(priceToShow == 'NaN' ? '': priceToShow);
                }
            });
        }

        document.getElementById("currencyTypeFlag").className = "";
        document.getElementById("currencyTypeFlag").className = "flag " + currencyType.toLowerCase();
        $("#currencyType").text(currencyType);


    } catch (e) {
        console.log(e);
    } finally {
        $('#content_loading').hide(1000);
    }

}

function button_target(identifier, type){
    //onmouseover
    if(type==1){
        if($(identifier).hasClass('button-blue')){
            $(identifier).removeClass('button-blue');
            $(identifier).addClass('button-red');
        }
    } else if(type==2){
        //onmouseout
        if($(identifier).hasClass('button-red')){
            $(identifier).removeClass('button-red');
            $(identifier).addClass('button-blue');
        }
    }
}

function show_destinations(){
    $('.hidden_destinations').show();
    $('#hide_destinations').show();
    $('#show_destinations').hide();
}

function hide_destinations(){
    $('.hidden_destinations').hide();
    $('#show_destinations').show();
    $('#hide_destinations').hide();
}



function prev_next(isNext, categoryId, this_ ){
    var titles = $(this_).parent().find('p');
    var index = -1;
    $.each(titles, function(i, item){
        if($(item).hasClass('active')){
            index = i;
            return false;
        }
    });
    if(index != -1){

        var nActive = index + isNext;
        if(nActive == -1){
            nActive = titles.length - 1;
        }else if(nActive == titles.length){
            nActive = 0;
        }

        $(titles[index]).removeClass('active');
        var class_o = $(titles[index]).attr('class');
        $(titles[index]).addClass('passive');
        $('.'+class_o).hide();

        $(titles[nActive]).removeClass('passive');
        var class_n = $(titles[nActive]).attr('class');
        $(titles[nActive]).addClass('active');

        $('.'+class_n).show();

        $('.'+class_n).find('.slick-list').find('.slick-track').attr('style','width:191px');
        $('.'+class_n).find('.slick-list').find('.slick-track').find('.slick-active').attr('style','width:191px');
    }
}