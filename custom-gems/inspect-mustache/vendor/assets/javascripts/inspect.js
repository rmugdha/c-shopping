/**
$(function(){
    var p='<div class="pinched-div"><div class="pinched"><p>hello</p></div></div>';
    $("body").append(p);
    $('inspect').live('click',function(e){
        e.stopPropagation();
        var path=$(this).attr('data-path');
        console.log("path => "+path);
    });
});
 **/