$('#m-menu').click(function () {
    var $con = $('#menu-mobile .main-menu').css('height');
    if ($con == '0px') {
        $('#menu-mobile .main-menu').css({'height': 'auto', 'opacity': '1','top':'100%','display':'block'});
    } else {
        $('#menu-mobile .main-menu').css({'height': '0px', 'opacity': '0','top':'-100%','display':'none'});
    }
})