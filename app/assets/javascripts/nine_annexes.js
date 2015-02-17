jQuery(function() {

  $( "#nine_annex_universo_perros_imss_prospera" ).keyup(function() {
    //validateFields($(this));
    sumFieldsUniversoIMSSProspera();
  });

  $( "#nine_annex_universo_gatos_imss_prospera" ).keyup(function() {
    //validateFields($this);
    sumFieldsUniversoIMSSProspera();
  });

  function sumFieldsUniversoIMSSProspera(){
    var perrosEstimados = $( "#nine_annex_universo_perros_imss_prospera" ).val();
    var gatosEstimados = $("#nine_annex_universo_gatos_imss_prospera").val();
    var total = parseInt(perrosEstimados) + parseInt(gatosEstimados);
    $('#nine_annex_universo_total_imss_prospera').val(total);
    //return total
  }; //nine_annex_perros_vacunar_imss_prospera

  $( "#nine_annex_perros_vacunar_imss_prospera" ).keyup(function() {
    //validateFields($(this));
    sumFieldsResponsabilidadIMSSProspera();
  });

  $( "#nine_annex_gatos_vacunar_imss_prospera" ).keyup(function() {
    //validateFields($this);
    sumFieldsResponsabilidadIMSSProspera();
  });

  function sumFieldsResponsabilidadIMSSProspera(){
    var perrosEstimados = $( "#nine_annex_perros_vacunar_imss_prospera" ).val();
    var gatosEstimados = $("#nine_annex_gatos_vacunar_imss_prospera").val();
    var total = parseInt(perrosEstimados) + parseInt(gatosEstimados);
    $('#nine_annex_total_vacunar_imss_prospera').val(total);
    //return total
  };


  $("#new_nine_annex").validate({
   rules: {
     "nine_annex[universo_perros_imss_prospera]": {
       "required": true,
       digits: true,
       min: 0
     },
     "nine_annex[universo_gatos_imss_prospera]": {
       "required": true,
       digits: true,
       min: 0
     },
     "nine_annex[perros_vacunar_imss_prospera]":{
       "required": true,
       digits: true,
       min: 0
     },
     "nine_annex[gatos_vacunar_imss_prospera]":{
       "required": true,
       digits: true,
       min: 0
     },
     "nine_annex[numero_municipios]":{
       "required": true,
       digits: true,
       min: 0
     },
     "nine_annex[numero_municipios_imss_prospera]":{
       "required": true,
       digits: true,
       min: 0
     }

   }
 });

});
