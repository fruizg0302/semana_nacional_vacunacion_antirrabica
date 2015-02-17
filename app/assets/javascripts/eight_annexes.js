jQuery(function() {

  $( "#eight_annex_perros_estimados" ).keyup(function() {
    //validateFields($(this));
    sumFields();
  });

  $( "#eight_annex_gatos_estimados" ).keyup(function() {
    //validateFields($this);
    sumFields();
  });

  function sumFields(){
    var perrosEstimados = $( "#eight_annex_perros_estimados" ).val();
    var gatosEstimados = $("#eight_annex_gatos_estimados").val();
    var total = parseInt(perrosEstimados) + parseInt(gatosEstimados);
    $('#eight_annex_total_estimados').val(total);
    //return total
  }

  $( "#eight_annex_perros_por_vacunar" ).keyup(function() {
    //validateFields($(this));
    sumVacunarFields();
  });

  $( "#eight_annex_gatos_por_vacunar" ).keyup(function() {
    //validateFields($this);
    sumVacunarFields();
  });

  function sumVacunarFields(){
    var perrosVacunados = $( "#eight_annex_perros_por_vacunar" ).val();
    var gatosVacunados = $("#eight_annex_gatos_por_vacunar").val();
    var totalVacunados = parseInt(perrosVacunados) + parseInt(gatosVacunados);
    $('#eight_annex_total_por_vacunar').val(totalVacunados);
    //return total
  }

  $( "#eight_annex_perros_vsn" ).keyup(function() {
    //validateFields($(this));
    sumVSNFields();
  });

  $( "#eight_annex_gatos_vsn" ).keyup(function() {
    //validateFields($this);
    sumVSNFields();
  });

  function sumVSNFields(){
    var perrosVSN = $( "#eight_annex_perros_vsn" ).val();
    var gatosVSN = $("#eight_annex_gatos_vsn").val();
    var totalVSN = parseInt(perrosVSN) + parseInt(gatosVSN);
    $('#eight_annex_total_vsn').val(totalVSN);
    //return total
  }



  $("#new_eight_annex").validate({
   rules: {
     "eight_annex[perros_estimados]": {
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[gatos_estimados]": {
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[perros_por_vacunar]": {
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[gatos_por_vacunar]":{
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[perros_vsn]":{
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[gatos_vsn]":{
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[Número de brigadas por día]":{
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[puestos_fijos]":{
       "required": true,
       digits: true,
       min: 0
     },
     "eight_annex[numero_de_dias]":{
       "required": true,
       digits: true,
       min: 0  
     }

   }
 });

});
