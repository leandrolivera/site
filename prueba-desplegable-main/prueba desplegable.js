jQuery('document').ready(function($){
	var despliegaBtn = $('.navegacion ul .desplegable'),
		opciones = $('.navegacion ul .adentro');
	
	despliegaBtn.click(function() {
		//var myId = $(this).attr('id');
		/*alert (myId);*/
		//alert (opciones.attr('id'));
		if (opciones.hasClass ('show')){
			/*if(opciones.attr('id') == myId){*/
				opciones.removeClass ('show');
			//}
		} else {
			/*if(opciones.attr('id') == myId){*/
				opciones.addClass('show');
			//}
		}
	});
});