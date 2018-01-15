// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require jquery-ui/widgets/datepicker
//= require bootstrap-sprockets
//= require_tree .

$(document).on('turbolinks:load', function(){
    $('#buscarResFecha').datepicker({ dateFormat: 'yy-mm-dd' });   
    toLast(1);
    toLast(2);
    toLast(3); 
} );

/*
function cargarSugerencias() {
    // var insert = $("#añadirArticulos");
    var html = "";
    $.getJSON("../articulos.json", function (dataJson) {
        $.each(dataJson.data, function (index, element) {
            html += "<img src=\"" + element.img + "\" width=\"100%\">\n" +
                "        <h4>" + element.articulo + "</h4>\n" +
                "        <span>Fecha: " + element.fecha + "</span><hr/>";
        });
        console.log(html);
        $("#añadirArticulos").append(html);
    });
}
*/
function enviar() {
    alert("Gracias por contactar con nosotros");
}

var contador = 1;
function myMap() {
    var mapProp= {
        center:new google.maps.LatLng(28.0724719,-15.4515526),
        zoom:18,
        mapTypeId: google.maps.MapTypeId.HYBRID
    };
    var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

function comentar() {
    var comentario = $("textarea#comment").val();
    $( ".media" ).append( "<div class=\"media-left\">\n" +
        "<img src=\"../img/LogoP&Rnaranja.png\" class=\"media-object\" style=\"width:60px\">\n" +
        "</div>\n" +
        "<div class=\"media-body\">\n" +
        "<h4 class=\"media-heading\">Tú</h4>\n" +
        <!--<aqui deberia ponerse en vez de ese p con el lorem, poner el parrafo escrito por el usuario to bomba>-->
        "<p id='añadir"+contador+"'></p>\n" +
        "</div>\n" +
        "<br>" );
    $( "#añadir"+contador).append(comentario);
    contador= contador+1;
}


function toLast(section) {
    $('#resultNext'+section).css("background-color", "");
    $('#resultLast'+section).css("background-color", "gainsboro");
    $('#tablaProxima'+section).hide();
    $('#tablaUltima'+section).show();

}

function toNext(section) {
    $('#resultLast'+section).css("background-color", "");
    $('#resultNext'+section).css("background-color", "gainsboro");
    $('#tablaUltima'+section).hide();
    $('#tablaProxima'+section).show();
}
