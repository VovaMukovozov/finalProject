App.service('albumsSingleton', function($http) {
    var _albums = null;

    var gettingAlbumsFromServer = false;

    var callbacks = [];

    function getAlbumsFromServer() {

        //get categoris from server
        $http.get("../../musicStore/api/application/api/albums")
            .success(function (albums) {
                _albums = albums;


                while(callbacks.length > 0) {
                    var callback = callbacks[0];

                    callbacks.splice(0, 1);

                    callback(_albums);
                }

                gettingAlbumsFromServer = false;
            });
    }

    return {
        getAlbums: function (callback) {
            if (_albums != null) {
                callback(_albums);
            } else {
                callbacks.push(callback);

                if (!gettingAlbumsFromServer) {
                    gettingAlbumsFromServer = true;
                    getAlbumsFromServer();
                }
            }
        }
    };
});