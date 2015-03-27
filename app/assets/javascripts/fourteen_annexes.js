jQuery(function() {

  $( "#fourteen_annex_logros_perros" ).keyup(function() {
    //validateFields($(this));
    sumFields();
  });

  $( "#fourteen_annex_logros_gatos" ).keyup(function() {
    //validateFields($this);
    sumFields();
  });

  $( "#fourteen_annex_personas_sesa" ).keyup(function() {
    //validateFields($(this));
    sumPersonasFields();
  });

  $( "#fourteen_annex_personas_edo_mpio" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  $( "#fourteen_annex_personas_sagarpa" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  $( "#fourteen_annex_personas_escuelas_vet_pec" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  $( "#fourteen_annex_personas_gpos" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  $( "#fourteen_annex_personas_voluntarios" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  $( "#fourteen_annex_personas_imss_prospera" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  $( "#fourteen_annex_otros" ).keyup(function() {
    //validateFields($this);
    sumPersonasFields();
  });

  function sumFields(){
    var perrosEstimados = $( "#fourteen_annex_logros_perros" ).val();
    var gatosEstimados = $("#fourteen_annex_logros_gatos").val();
    var total = parseInt(perrosEstimados) + parseInt(gatosEstimados);
    $("#fourteen_annex_logros_total").val(total);
    //return total
  }

  function sumPersonasFields(){
    var sesa = $( "#fourteen_annex_personas_sesa").val();
    var mpio = $("#fourteen_annex_personas_edo_mpio" ).val();
    var sagarpa = $("#fourteen_annex_personas_sagarpa" ).val();
    var escuelas = $("#fourteen_annex_personas_escuelas_vet_pec" ).val();
    var grupos = $("#fourteen_annex_personas_gpos" ).val();
    var voluntarios = $("#fourteen_annex_personas_voluntarios" ).val();
    var imssProspera = $("#fourteen_annex_personas_imss_prospera" ).val();
    var otros = $("#fourteen_annex_otros" ).val();
    var totalPersonas = parseInt(sesa) + parseInt(mpio) + parseInt(sagarpa) + parseInt(escuelas) + parseInt(grupos) + parseInt(voluntarios) + parseInt(imssProspera) + parseInt(otros);
    $("#fourteen_annex_personas_total").val(totalPersonas);
    //return total
  }
});
