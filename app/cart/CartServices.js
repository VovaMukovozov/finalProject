App.service('CartServices', function($filter) {
    var self = this;
    
    var _cart = JSON.parse(localStorage.getItem('cart')) || [];
    
    this.setItemInCart = function(item, stock) {
        
        var filter = $filter('filter')(_cart, {album_id: item.album_id})[0];

        if(typeof(filter) === "undefined") {
            item['sum'] = stock;
            _cart.push(item);
        } 
        else {
            filter.sum += stock;
        }
        
        saveCartToStorage();
    }
    
    this.getCart = function() {
        return _cart;
    }
    
    this.getNumCartItems = function() {
        return _cart.length;
    }
    
    this.getSubTotal = function() {
        var total = 0;
        _cart.forEach(function(item){
            total += item.sum * item.album_price;
        });
        
        return parseFloat(Math.round(total * 100) / 100).toFixed(2);
    }
    
    this.removeAlbum = function(value) {
        _cart.splice(value, 1);
        saveCartToStorage();
    }
    
    function saveCartToStorage() {
        localStorage.setItem('cart', JSON.stringify(_cart));
    }
    
    this.clearToCart = function(){
        localStorage.clear('cart');
        _cart = {};
    }
    
});