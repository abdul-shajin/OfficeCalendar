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
  OffDays = data[0]
  OffDaysParameter = txtProcess(OffDays)
  holiday(OffDaysParameter)
  $.each data[1], (date, name) ->
    $("td[data-date='" + date + "']").fadeTo "slow", .4
    $("td[data-date='" + date + "']").css('background-color','yellow')

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


  $ ->
    range_start = new Date("April 1, 2013")
    range_end = new Date("March 31, 2014")
    $("#holiday_date").datepicker
      minDate: range_start
      maxDate: range_end



