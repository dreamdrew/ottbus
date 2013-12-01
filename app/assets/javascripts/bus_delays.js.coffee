# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
jQuery -> $('.bus_delays_date').datepicker({
		dateFormat: 'yy-mm-dd'
		onSelect: (dateText, datepicker) -> $('#date_form_id').submit()
	})

#$(document).on 'ready page:load', -> $('.bus_delays_date').datepicker({
#            format: 'yy-mm-dd'
#            autoclose: true
#            todayHighlight: true
#            language: 'en'
#});

$(document).ready(ready)
$(document).on('page:load', ready)
