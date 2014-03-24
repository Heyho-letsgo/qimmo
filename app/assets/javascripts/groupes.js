// en javascript les commentaires ne sont pas en dièse alors qu'en coffee ils sont en dièse

$(function() {
    $( "#dialog-message" ).dialog({
        modal: true,
        buttons: {
            Ok: function() {
                $( this ).dialog( "close" );
            }
        }
    });
});



// on CRÉE LA FONCTION JQUERY QUI VA NOUS PERMETTRE D'AFFICHER UN PETIT COMMENTAIRE
$('.hover').hover();