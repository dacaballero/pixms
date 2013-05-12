// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require js/jquery-1.8.3.min
//= require breakpoints/breakpoints
//= require jquery_nested_form
//= require jquery-ui/jquery-ui-1.10.1.custom.min
//= require jquery-slimscroll/jquery.slimscroll.min
//= require fullcalendar/fullcalendar/fullcalendar.min
//= require bootstrap/js/bootstrap.min
//= require bootstrap-fileupload/bootstrap-fileupload
//= require js/jquery.blockui
//= require js/jquery.cookie
//= require gritter/js/jquery.gritter
//= require uniform/jquery.uniform.min
//= require js/jquery.pulsate.min
//= require bootstrap-datepicker/js/bootstrap-datepicker
//= require bootstrap-daterangepicker/date
//= require bootstrap-daterangepicker/daterangepicker
//= require js/app
//= require data-tables/jquery.dataTables
//= require data-tables/DT_bootstrap
//= require chosen-bootstrap/chosen/chosen.jquery.min
//= require jquery-tags-input/jquery.tagsinput.min
//= require ckeditor/ckeditor
//= require_tree .
function initListTable(table){
	var oTable = table.dataTable({
		"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "_MENU_ per page",
            "oPaginate": {
                "sPrevious": "Prev",
                "sNext": "Next"
            }
        },
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [0]
        }]
	});

}
