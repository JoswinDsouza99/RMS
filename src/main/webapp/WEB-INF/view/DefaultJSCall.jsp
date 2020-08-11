<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script> $.widget.bridge('uibutton', $.ui.button); </script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Select2 -->
<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="bower_components/raphael/raphael.min.js"></script>
<script src="bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Notification -->
<script src="js/pnotify.custom.min.js"></script>
<script src="js/PNotifyConfirm.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- bootstrap color picker -->
<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="bower_components/chart.js/Chart.js"></script>
<!-- Datatable -->
<!--<script src="js/jquery-3.3.1.js"></script> -->
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/dataTables.buttons.min.js"></script>
<script src="js/buttons.flash.min.js"></script>
<script src="js/jszip.min.js"></script>
<script src="js/pdfmake.min.js"></script>
<script src="js/vfs_fonts.js"></script>
<script src="js/buttons.html5.min.js"></script>
<script src="js/buttons.print.min.js"></script>

<!-- iCheck 1.0.1 -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>

<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="js/Common.js"></script>
<!-- CK Editor -->
<script src="bower_components/ckeditor/ckeditor.js"></script>
<script src="js/jquery.mask.js"></script>

<script>
  $(function () {
	    $('.table1').DataTable({
	    	/* "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	    	"iDisplayLength": 10 */
		        dom: 'Bfrtip',
		        "iDisplayLength": 10,
		    	lengthMenu: [
		            [ 10, 25, 50, -1 ],
		            [ '10 rows', '25 rows', '50 rows', 'Show all' ]
		        ],
				 buttons: [
			        	{
			        		extend:'pageLength',
			        		text: 'Page Length <i class="fa fa-sort-down"></i>'
			        	}
			        	]
	   })
	   $('.table2').DataTable({
	     'paging'      : false,
	     'lengthChange': false,
	     'searching'   : false,
	     'ordering'    : true,
	     'info'        : false,
	     'autoWidth'   : false,
	     "scrollX": true,
		  "scrollY": 300,
	   })
	   $('.table3').DataTable({
	    	/* "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	    	"iDisplayLength": -1,
	    	"aaSorting": [[2, 'asc']] */
	    	 dom: 'Bfrtip',
	    	 "aaSorting": [[2, 'asc']],
	    	 "iDisplayLength": -1,
		    	lengthMenu: [
		            [ 10, 25, 50, -1 ],
		            [ '10 rows', '25 rows', '50 rows', 'Show all' ]
		        ],
				 buttons: [
			        	{
			        		extend:'pageLength',
			        		text: 'Page Length <i class="fa fa-sort-down"></i>'
			        	}
			        	]
	   })
	   /*  $('.table-checkbox').DataTable({
	    	"lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	    	"iDisplayLength": -1,
	    	"aaSorting": [[2, 'asc']],
			 "scrollY": 400
	     }) */
	     $('.table-checkbox').DataTable({
	    	 "scrollX": true,
	    	 "iDisplayLength": -1,
		     "aaSorting": [[2, 'asc']],
		        dom: 'Bfrtip',
		        "scrollY": 400,
		        "scrollX": true,
		        "autoWidth": false,
		    	lengthMenu: [
		            [ 10, 25, 50, -1 ],
		            [ '10 rows', '25 rows', '50 rows', 'Show all' ]
		        ],
				 buttons: [
			        	{
			        		extend:'pageLength',
			        		text: 'Page Length <i class="fa fa-sort-down"></i>'
			        	}
			        	]
		     })
	    $('.only-Search').DataTable({
	     'paging'      : false,
	     'lengthChange': false,
	     'searching'   : true,
	     'ordering'    : true,
	     'info'        : false,
	     'autoWidth'   : false,
	     "scrollX": true,
		  "scrollY": 400,
		  "aaSorting": [[1, 'asc']]
	   })
	   $('.export-data').DataTable({
    	"scrollY":  400,
        "scrollX": true,
        'dom': 'Bfrtip',
        'buttons' : [ 'copy', 'csv', 'excel','pdf','print' ]
    })
  })
</script>
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()
    
   /*  $('.date').mask('00-00-0000'); */
    $('.timeWithSecond').mask('00:00:00');
    $('.timeWithoutSecond').mask('00:00');
   /*  $('.date_time').mask('00-00-0000 00:00:00'); */
    
	$('.defaultDatePicker').datepicker({
      autoclose: true,
      format: 'dd-mm-yyyy',
      orientation: 'bottom'
    })
    $('.defaultDatePickerMinDate').datepicker({
	      autoclose: true,
	      format: 'dd-mm-yyyy',
	      startDate: new Date(),
	      orientation: 'bottom'
	 })
	 $('.defaultDatePickerMaxDate').datepicker({
	      autoclose: true,
	      format: 'dd-mm-yyyy',
	      endDate: new Date(),
	      orientation: 'bottom'
	 })
	$('.defaultYearPicker').datepicker({
		 autoclose: true,	
		 format: "yyyy",
	   	 viewMode: "years", 
		 minViewMode: "years",
	     orientation: 'bottom'
	 })
	 $('.defaultMonthYearPicker').datepicker({
		 autoclose: true,	
		 format: "mm-yyyy",
	     orientation: 'bottom' ,
	     viewMode: "months", 
	     minViewMode: "months",
	     orientation: 'bottom'
	 }) 
	 $('[data-toggle="tooltip"]').tooltip();   
	 /*  $('.defaultTimePicker').datetimepicker({
		  format: 'HH:mm'
	    }); */
	/*  $('.defaultYearPickerMinDate').datepicker({
		 	format: "yyyy",
		    viewMode: "years", 
		    minViewMode: "years"
	 }) */
    /* //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })
*/
    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })/*
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()
*/
    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })  
  })
  // Left Menu search method.
  $(document).ready(function(){
	  $("#searchMenuId").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#mainMenuHRMS li").filter(function() {
	    	 $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    }); 
	  });
	});
  
</script>
<script>
function hideMessage(){
	document.getElementById('message').innerHTML = '';
    <%session.removeAttribute("message");%>
    <%session.removeAttribute("errorMessage");%>
}
function goBack() {
	  window.history.back();
	}

</script>