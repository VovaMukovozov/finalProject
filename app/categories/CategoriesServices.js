App.service('categoriesSingleton', function($http) {
    var _categories = null;

    var gettingCategoriesFromServer = false;

    var callbacks = [];

    function getCategoriesFromServer() {

        //get categoris from server
        $http.get("../../musicStore/api/application/api/categories")
            .success(function (categories) {
                _categories = categories;


                while(callbacks.length > 0) {
                    var callback = callbacks[0];

                    callbacks.splice(0, 1);

                    callback(_categories);
                }

                gettingCategoriesFromServer = false;
            });
    }

    return {
        getCategories: function (callback) {
            if (_categories != null) {
                callback(_categories);
            } else {
                callbacks.push(callback);

                if (!gettingCategoriesFromServer) {
                    gettingCategoriesFromServer = true;
                    getCategoriesFromServer();
                }
            }
        }
    };
});