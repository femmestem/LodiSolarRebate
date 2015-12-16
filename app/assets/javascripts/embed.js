$(document).ready(function(){
    var $window  = $(window),
        $iframes = $('iframe');

    $window.resize(function(){
        $iframes.each(function(){
            this.setAttribute('width', this.parentNode.clientWidth);
        });
    });

    $window.trigger('resize');
});