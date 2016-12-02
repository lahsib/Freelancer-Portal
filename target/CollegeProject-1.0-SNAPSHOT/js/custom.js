


$(document).on("click", ".open", function () {
   /* var id = $(this).data('id');
    var merch = $(this).data('merch');
    var fromDate = $(this).data('from');
    var toDate = $(this).data('to');
    var type = $(this).data('typ');
    var status = $(this).data('sts');
    var message = $(this).data('msg');*/
    var id = $(this).data('id');
    var name = $(this).data('name')

    $(".modal-body #deleteId").val(id);
    $(".modal-body #deleteId").attr("name", name);
    /*$(".modal-body #deleteMerch").val(merch);
    $(".modal-body #deletefrmDate").val(fromDate);
    $(".modal-body #deletetDate").val(toDate);
    $(".modal-body #deletetype").val(type);
    $(".modal-body #deleteStatus").val(status);
    $(".modal-body #deletemsg").html(message);*/

});

$(window).load(function () {


    $('#myModal_edit').modal('show');
    $('#myModal_add').modal('show');
});


$('#toggleBtn').click(function(e){
    e.preventDefault();

});

(function ($) {
    $(window).load(function () {

     /*   */



        /*  $(".modal-body").mCustomScrollbar({
         scrollButtons:{enable:true},
         theme:"3d"
         });*/


    });
})(jQuery);


