# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
	$('#package_office_id').parent().hide()
	offices = $('#package_office_id').html()
	$('#package_company_id').change ->
		company = $('#package_company_id :selected').text()
		options = $(offices).filter("optgroup[label='#{company}']").html()
		if options
			$('#package_office_id').html(options)
			$('#package_office_id').parent().show()
		else
			$('#package_office_id').empty()
			$('#package_office_id').parent().hide()
  


