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
    $('.'+ doms[i]).addClass('holiday_dim')
    i++
highlightHoliday = (dates) ->
#change bg
#fade in,tool tip of name
customHoliday = (data) ->
  $.each data, (date, name) ->
    $("td[data-date]='"+"2013-06-13"+"'").fadeTo "slow", .4
    console.log 'index: ' + date + 'val : ' + name

$(document).ready ->
  $("#calendar").fullCalendar
    dayClick: (date, allDay, jsEvent, view) ->
      console.log "Clicked on the entire day: " + date
      $(this).css "background-color", "CornflowerBlue"
    eventSources: [
      url: '/holidays.json'
      type: "GET"
      error: ->
        alert "there was an error while fetching events!"
      success: (data) ->
        console.log data
        customHoliday(data)
    ]


$(document).on 'ready', document, ->
  OffDaysParameter = txtProcess(OffDays)
  holiday(OffDaysParameter)



