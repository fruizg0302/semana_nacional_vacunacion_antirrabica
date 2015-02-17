jQuery(function() {

  $( "#ten_annex_sesa_personas" ).keyup(function() {
    //validateFields($(this));
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_estados_municipios_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_sedena_semar" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_sagarpa_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_escuelas_veterinarias_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_grupos_comunidad_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_voluntarios_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_otros_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });

  $( "#ten_annex_imss_prospera_personas" ).keyup(function() {
    //validateFields($this);
    sumFieldsTotalPersonalInvolucrado();
  });
   //ten_annex_grupos_comunidad_personas

  function sumFieldsTotalPersonalInvolucrado(){
    var sesa = $( "#ten_annex_sesa_personas" ).val();
    var edosMpos = $("#ten_annex_estados_municipios_personas").val();
    var sedena = $("#ten_annex_sedena_semar").val();
    var sagarpa = $("#ten_annex_sagarpa_personas").val();
    var veterinarias = $("#ten_annex_escuelas_veterinarias_personas").val();
    var comunidad = $("#ten_annex_grupos_comunidad_personas").val();
    var voluntarios = $("#ten_annex_voluntarios_personas").val();
    var otros = $("#ten_annex_otros_personas").val();
    var personasProspera= $("#ten_annex_imss_prospera_personas").val();
    var total = parseInt(sesa) + parseInt(edosMpos) + parseInt(sedena) + parseInt(sagarpa) + parseInt(veterinarias) + parseInt(comunidad) + parseInt(voluntarios) + parseInt(otros) + parseInt(personasProspera);
    $('#ten_annex_total_personas').val(total);
    //return total
  }; //nine_annex_perros_vacunar_imss_prospera

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
