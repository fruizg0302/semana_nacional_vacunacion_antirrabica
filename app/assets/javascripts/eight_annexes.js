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

  $("#new_eight_annex").validate({
   rules: {
     "eight_annex[perros_estimados]": {
       "required": true,
       min: 0
       }
   }
 });

});
