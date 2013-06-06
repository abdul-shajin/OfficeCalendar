# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
txtProcess = (OffDays) ->
  OffDay1 = "fc-".concat(OffDays[0])
  OffDay2 = "fc-".concat(OffDays[1])
  [OffDay1, OffDay2]
holiday = (doms) ->
  i = 0
  while i < doms.length
    $("." + doms[i]).fadeTo "slow", .4
    $("." + doms[i]).find("*").andSelf().unbind()
    i++


$(document).ready ->
  $("#calendar").fullCalendar dayClick: (date, allDay, jsEvent, view) ->
    console.log "Clicked on the entire day: " + date
    $(this).css "background-color", "red"
  OffDaysParameter = txtProcess(OffDays)
  console.log OffDaysParameter
  holiday(OffDaysParameter)




