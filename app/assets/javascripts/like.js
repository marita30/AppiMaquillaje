// Para que el boton cambien sin que se refresh la pagina
$(document).ready(function(){
    $('.box').click(function(){
       
      if ($(this).text()==' Like'){
        $(this).removeClass('entypo-thumbs-up').addClass('entypo-thumbs-down').text(' Unlike');
      }else{
        $(this).removeClass('entypo-thumbs-down').addClass('entypo-thumbs-up').text(' Like');
      }
    });
  });

        // $.ajax({
        //     type:"POST",
        //     url:"",
        //     data:{nombre:nombre}
        //     typedata:text,
        //     success: function(text){
        //         alert(text);
        //         }
        //     })
     
 