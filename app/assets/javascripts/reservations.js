
   var Check_Valid_Hours = function(){
       var current_date = $('#select_id option:selected');
       if (current_date.text() === "Hoy") {
           //validar la hora actual con las que se muestran
           var time = new Date();
           var horas = $('.horas input');
           horas.each(function(item){
                if (($(horas[item]).val() - time.getHours()) <= 12) {
                    $(horas[item]).attr('disabled',true);
                    
                }
           });
       }else{
           //las horas de mañana siempre salen
            $('.horas input').attr('disabled', false);
       }
       
   }

$(document).ready(function() {
    
    $('.salvar').val('Crear Reservación');
    
    //to do: validar cuando en el dia estan corriendo las horas y que debe ocultar o desactivar
    Check_Valid_Hours();
    $('#select_id').on('change',function() {
        Check_Valid_Hours();
    });
    
    
    $('.horas input').change(function(){
        
        //verificar
        var hours_selected = $('.horas input:checked');
        if (hours_selected.length > 2) {
            $('.horas input:not(:checked)').attr('disabled',true);
        }else{
            $('.horas input:not(:checked)').attr('disabled',false);
        }
    });
    
    
    $('.salvar').on('click', function(){
        var hours_selected = $('.horas input:checked');
        
        if (hours_selected.length < 1) {
            alert("Seleccione al menos una hora para reservar");
            return false;
        }else{
            $(this).submit();
        }
        
    });
    
});