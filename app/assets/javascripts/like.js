// Para que el boton cambien sin que se refresh la pagina
$(document).ready(function(){
  $('.holder').on('click','button', function (evt) {
      var idApi = $(this).data('btn');
      var cachedThis = this;
    
     
      if ($(this).text()==='like'){
        console.log(idApi)
        // Para guardar en la base de datos
        $.ajax({

          url: '/create/like',
          type: "post",
          data:jQuery.param({id_api: idApi}),
          success: function(data){
            $(cachedThis).removeClass('entypo-thumbs-up').addClass('entypo-thumbs-down').text('unlike');
          }
        })
      }
      if ($(this).text()==='unlike') {
        console.log(idApi)
        $.ajax({

          url: '/delete/like',
          type: "post",
          data:jQuery.param({id_api: idApi}),
          success: function(data){
            $(cachedThis).removeClass('entypo-thumbs-down').addClass('entypo-thumbs-up').text('like');
          }
        })
       
      }
    });
  });

       
     
 