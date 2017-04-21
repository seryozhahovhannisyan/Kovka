function SelectedPage (id, images, title, info) {

    this.id = id;
    this.images = images;
    this.title = title;
    this.info = info;

    this.getId = function() {
        return this.id;
    };

    this.getImages = function() {
        return this.images;
    };

    this.getTitle = function() {
        return this.title;
    };

    this.getInfo = function() {
        return this.info;
    };

    this.setId = function(id) {
        this.id = id;
    };

    this.setImages = function(images) {
        this.images = images;
    };

    this.setTitle = function(title) {
        this.title = title;
    };

    this.setInfo = function(info) {
        this.info = info;
    };
}
