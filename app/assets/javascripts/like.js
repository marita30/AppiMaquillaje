// Para que el boton cambien sin que se refresh la pagina
$(document).ready(function(){
  $('#holder').on('click','button', function (evt) {
      var res = $(this).data('btn');
       alert(res)
      if ($(this).text()==' Like'){
        console.log('like')
        $(this).removeClass('entypo-thumbs-up').addClass('entypo-thumbs-down').text(' Unlike');
      }else{
        console.log('unlike')
        $(this).removeClass('entypo-thumbs-down').addClass('entypo-thumbs-up').text(' Like');
      }

   
    });
  });

       
     
 