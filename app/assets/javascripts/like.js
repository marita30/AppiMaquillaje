// Para que el boton cambien sin que se refresh la pagina
$(document).ready(function(){
  $('.holder').on('click','button', function (evt) {
      var idApi = $(this).data('btn');
       alert(idApi)
      if ($(this).text()==' Like'){
        
        $(this).removeClass('entypo-thumbs-up').addClass('entypo-thumbs-down').text(' Unlike');
      }else{
        $(this).removeClass('entypo-thumbs-down').addClass('entypo-thumbs-up').text(' Like');
      }
     
   
    });
  });

       
     
 