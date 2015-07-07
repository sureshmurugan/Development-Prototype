var innerContentElement= $("#display-wrapper");

getTemplate = function (template) {
    $(innerContentElement).load( "//"+location.host+pathRoute+"/web/bundles/fda/template/"+template,function(){
});
}

Path.map('#/Dashboard').to(function(){window.params=this.params;getTemplate('dashboard.html')});

Path.listen();