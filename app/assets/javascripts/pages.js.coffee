# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
        $('#agency-users').dataTable()
		bJQueryUI: true
		sPaginationType: "full_numbers"


jQuery ->
		$('#all-ppmps').dataTable()
		"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
		"sPaginationType": "bootstrap"
		bJQueryUI: true



	
	
###################################################################################

# Override Rails handling of confirmation

$.rails.allowAction = (element) ->
  # The message is something like "Are you sure?"
  message = element.data('confirm')
  # If there's no message, there's no data-confirm attribute, 
  # which means there's nothing to confirm
  return true unless message
  # Clone the clicked element (probably a delete link) so we can use it in the dialog box.
  $link = element.clone()
    # We don't necessarily want the same styling as the original link/button.
    .removeAttr('class')
    # We don't want to pop up another confirmation (recursion)
    .removeAttr('data-confirm')
    # We want a button
    .addClass('btn').addClass('btn-primary')
    # We want it to sound confirmy
    .html("Yes")

  # Create the modal box with the message
  modal_html = """
               <div class="modal hide fade" id="myModalConfirm">
                 
                 <div class="modal-body">
                   <h5>#{message}</h5>
                 </div>
                 <div class="modal-footer">
                   <a data-dismiss="modal" class="btn btn-danger">No</a>
                 </div>
               </div>
               """
  $modal_html = $(modal_html)
  # Add the new button to the modal box
  $modal_html.find('.modal-footer').append($link)
  # Pop it up
  $modal_html.modal()
  # Prevent the original link from working
  return false