# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $("#calendar").fullCalendar dayClick: (date, allDay, jsEvent, view) ->
    console.log "Clicked on the entire day: " + date
    $(this).css "background-color", "red"


