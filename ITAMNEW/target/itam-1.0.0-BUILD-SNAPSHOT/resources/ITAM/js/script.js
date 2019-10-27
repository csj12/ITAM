
$(document).ready(function(){
    //GNB
    $('.nav-wrap, .hover-wrap').hover(function() {
        $('.hover-wrap').show();
    }, function(){
        $('.hover-wrap').hide();
    });

    //Date
    let today = new Date().toISOString().substr(0, 10);
    document.querySelector("#today").value = today;

    document.querySelector("#today2").valueAsDate = new Date();

});
