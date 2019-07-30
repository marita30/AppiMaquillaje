// Para que el boton cambien sin que se refresh la pagina
$(document).ready(function(){
    $('.box').click(function(){
      var id_api = $('.box').text();
      console.log (id_api)
       
      if ($(this).text()==' Like'){
        $(this).removeClass('entypo-thumbs-up').addClass('entypo-thumbs-down').text(' Unlike');
      }else{
        $(this).removeClass('entypo-thumbs-down').addClass('entypo-thumbs-up').text(' Like');
      }

      // $.ajax({
      //   type:"POST",
      //   url:"'/create/like'",
      //   data:{id_api:id}
      //   success: function(submit){
      //       alert(text);
      //       }
      //   })
    });
  });

       
     
 