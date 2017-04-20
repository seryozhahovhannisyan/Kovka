function Rate (id, currencyType, currentRate, lastUpdated) {

    this.id = id;
    this.currencyType = currencyType;
    this.currentRate = currentRate;
    this.lastUpdated = lastUpdated; 

    this.getId = function() {
        return this.id;
    }; 

    this.setId = function(id) {
        this.id = id;
    };
    
    this.getCurrencyType = function() {
        return this.currencyType;
    };

    this.setCurrencyType = function(currencyType) {
        this.currencyType = currencyType;
    };

    this.getCurrentRate = function() {
        return this.currentRate;
    };

    this.setCurrentRate = function(currentRate) {
        this.currentRate = currentRate;
    };

    this.getLastUpdated = function() {
        return this.lastUpdated;
    };

    this.setLastUpdated = function(lastUpdated) {
        this.lastUpdated = lastUpdated;
    };
}
