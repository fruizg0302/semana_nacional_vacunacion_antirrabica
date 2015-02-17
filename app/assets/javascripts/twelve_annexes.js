jQuery(function() {
  $("#new_twelve_annex").validate({
   rules: {
     "twelve_annex[difusion_acumulado_total]": {
       "required": true,
       digits: true,
       min: 0
     }
   }
 });

});
