function Box (id, img, name, shortDesc, title, description,
              page_type, has_more_info, has_book, url_) {

    this.id = id;
    this.img = img;

    this.name = name;
    this.shortDesc = shortDesc;

    this.title = title;
    this.description = description;

    this.page_type = page_type;
    this.has_more_info = has_more_info;
    this.has_book = has_book;

    this.url_ = url_;
    this.images = [];
    this.products = [];
    this.viewProducts = [];
    

    this.addImg = function(img) {
        this.images.push(img);
    };
    this.addProduct = function (product) {
        this.products.push(product);
    };

    this.initViewProducts = function (size) { 
        for (var i=0; i<this.products.length; i+=size) {
            this.viewProducts.push(this.products.slice(i,i+size));
        }
        this.products = null;  
    };


}
