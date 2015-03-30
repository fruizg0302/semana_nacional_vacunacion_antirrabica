jQuery(function() {
  $( "#fifteen_annex_logros_gatos" ).keyup(function() {
    //validateFields($(this));
    sumFields();
  });
  $( "#fifteen_annex_logros_perros" ).keyup(function() {
    //validateFields($this);
    sumFields();
  });
  function sumFields(){
    var perrosLogros = $( "#fifteen_annex_logros_gatos" ).val();
    var gatosLogros = $("#fifteen_annex_logros_perros").val();
    var total = parseInt(perrosLogros) + parseInt(gatosLogros);
    $("#fifteen_annex_logros_total").val(total);
    //return total
  }
});
