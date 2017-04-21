function Destination (id, img, title, info, destinations, page_type, has_more_info, add_trip) {

    this.id = id;
    this.img = img;
    this.title = title;
    this.info = info;
    this.destinations = destinations;
    this.page_type = page_type;
    this.has_more_info = has_more_info;
    this.add_trip = add_trip;
    
    this.getId = function() {
        return this.id;
    };

    this.getImg = function() {
        return this.img;
    };

    this.getTitle = function() {
        return this.title;
    };

    this.getDestinations = function() {
        return this.destinations;
    };

    this.getInfo = function() {
        return this.info;
    };

    this.getHasMoreInfo = function() {
        return this.has_more_info;
    };

    this.getAddTrip = function() {
        return this.add_trip;
    };

    this.setId = function(id) {
        this.id = id;
    };

    this.setImg = function(img) {
        this.img = img;
    };

    this.setTitle = function(title) {
        this.title = title;
    };

    this.setInfo = function(info) {
        this.info = info;
    };

    this.setHasMoreInfo = function(has_more_info) {
        this.has_more_info = has_more_info;
    };

    this.setAddTrip = function(add_trip) {
        this.add_trip = add_trip;
    };

    this.setDestinations = function(destinations) {
        this.destinations = destinations;
    };


}
