var map;

function initialize() {
    var mapOptions = {
        zoom: 18,
        center: new google.maps.LatLng(40.173748, 44.504240)
    };

    map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);

    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(40.173748, 44.504240),
        map: map,
        title: 'Market'
    });

}


google.maps.event.addDomListener(window, 'load', initialize);