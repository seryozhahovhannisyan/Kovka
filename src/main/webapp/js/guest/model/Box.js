function Box (id, img, title, info, page_type, has_more_info, has_book, url_) {

    this.id = id;
    this.img = img;
    this.title = title;
    this.info = info;
    this.page_type = page_type;
    this.has_more_info = has_more_info;
    this.has_book = has_book;
    this.url_ = url_;

    this.getId = function() {
        return this.id;
    };

    this.getImg = function() {
        return this.img;
    };

    this.getTitle = function() {
        return this.title;
    };

    this.getInfo = function() {
        return this.info;
    };

    this.getHasMoreInfo = function() {
        return this.has_more_info;
    };

    this.getHasBook = function() {
        return this.has_book;
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

    this.setHasBook = function(has_book) {
        this.has_book = has_book;
    };

    this.setUrl_ = function(url_) {
        this.url_ = url_;
    };

    this.getUrl_ = function(has_book) {
        return this.url_;
    };

}
