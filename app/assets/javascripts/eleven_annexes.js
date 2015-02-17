jQuery(function() {

  $( "#eleven_annex_numero_frascos" ).keyup(function() {
    //validateFields($(this));
    multiplyDosis();
  });

  function multiplyDosis(){
    var frascos = $( "#eleven_annex_numero_frascos" ).val();
    var dosis = parseInt(frascos) * 20;
    $('#eleven_annex_numero_dosis').val(dosis);
    //return total
  }

  $("#new_eleven_annex").validate({
   rules: {
     "eleven_annex[numero_frascos]": {
       "required": true,
       digits: true,
       min: 0
     }
   }
 });

});
