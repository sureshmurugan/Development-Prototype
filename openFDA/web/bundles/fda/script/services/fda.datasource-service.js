var index = location.pathname.indexOf('index');
pathName = location.pathname.substr(0, index - 1);
var index = location.pathname.split('/', 2).join('/').length;
pathRoute = location.pathname.substr(0, index);
routeName=pathRoute.replace(/\//g,'');


var localServiceBase='../web/bundles/fda/data/';
var serverServiceBase='//'+location.host+pathRoute+'/app_dev.php/FDA';


service = {

    getDataService: function (url, callback, isAsynch, itemData) {
        var syn = isAsynch !== undefined ? isAsynch : true;
        $.ajax({
            url: serverServiceBase + '/' + url,
            dataType: 'json',
            async: syn
        }).done(function (data) {
            callback(data, itemData);
        });
    },

    operationDataService: function (url, data, callback, isAsynch) {
        var syn = isAsynch !== undefined ? isAsynch : true;
        $.ajax({
            url: serverServiceBase + '/' + url,
            dataType: 'json',
            type: 'post',
            data: {data:data},
            async: syn
        }).done(function (data) {
            callback(data);
        });
    }
}







