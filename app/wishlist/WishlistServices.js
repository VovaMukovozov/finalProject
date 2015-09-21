App.service('WishlistServices', function($filter) {
    var self = this;
    
    var _whishList = JSON.parse(localStorage.getItem('wishlist')) || [];
    
    this.getWishList = function() {
        return _whishList;
    }
    
    this.setItemToWishlist = function(item) {
        var filter = $filter('filter')(_whishList, {album_id: item.album_id})[0];
        
        if(typeof(filter) === "undefined") {
            _whishList.push(item);
        } 
        else {
            
            for (var i = 0; i < _whishList.length; i++) {
                if (_whishList[i].album_id === item.album_id) { 
                    _whishList.splice(i, 1);
                    break;
                }
            }
        }
        
        saveWishlistToStorage();
    }
    
    this.checkIfIssetInWishlist = function(album_id) {
        var filter = $filter('filter')(_whishList, {album_id: album_id})[0];
        if(typeof(filter) === "undefined") {
            return false;
        }
        else {
            return true;   
        }
        
    }
    
    this.removeItem = function(value) {
         _whishList.splice(value, 1);
        saveWishlistToStorage();
        console.log('test');
    }
    
    this.getNumItemsInWishlist = function() {
        return _whishList.length;   
    }
    
    function saveWishlistToStorage() {
        localStorage.setItem('wishlist', JSON.stringify(_whishList));
    }
    
});

