// $(function() {
//     $('.like-button').click(function(){
//         var obj = $(this);
//         if( obj.data("material-icons") ){
//             obj.data("material-icons", false);
//             obj.html("material-icons");
//         }
//         else{
//             obj.data("material-icons", true);
//             obj.html('Unlike');
//         }
//     });
// });


// $(".like-unlike").click(function (e) {
//     var like= $.trim( $(this).text() )
//     if(like== "Like") {
//         $(this).contents().filter(function () {  // find the text node inside the button
//             return this.nodeType == 3
//         }).replaceWith('Unlike');
//     } else {
//         $(this).contents().filter(function () {
//             return this.nodeType == 3
//         }).replaceWith('Like');
//     }
//     return false;
// });	


$(document).ready(function(){
    $('.box').click(function(){
       
      if ($(this).text()==' Like'){
        $(this).removeClass('entypo-thumbs-up').addClass('entypo-thumbs-down').text(' Unlike');
      }else{
        $(this).removeClass('entypo-thumbs-down').addClass('entypo-thumbs-up').text(' Like');
      }
    });
  });