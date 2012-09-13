$(function(){
    if(window.location.href.indexOf("__inspect__") != -1){
        var bar = $('<div class="inspect-top"><a href="javascript:void(0)" class="bar">INSPECT</div></div>');
        $(document.body).append(bar);

        $('.inspect-top .bar').live('click',function(e){

            e.stopPropagation();

            if($('.inspect').hasClass('active'))
                $('.inspect').removeClass('active')
            else
                $('.inspect').addClass('active')
        });
    }
});
