

 $(function () {
     $('#datetimepicker7A').datetimepicker({
             format: 'L'
         });
     $('#datetimepicker8A').datetimepicker({
             format: 'L',
         useCurrent: false
     });
     $("#datetimepicker7A").on("change.datetimepicker", function (e) {
         $('#datetimepicker8A').datetimepicker('minDate', e.date);
     });
     $("#datetimepicker8A").on("change.datetimepicker", function (e) {
         $('#datetimepicker7A').datetimepicker('maxDate', e.date);
     });
 });
