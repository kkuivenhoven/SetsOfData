App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log "in received (data) function"
    $('#messages').append data['message']

  speak: (message) ->
    console.log "WEEE"
    sn_name = $('#user_sn')
    screenName = $('#user_sn')[0].innerHTML
    wholeMessage = screenName + ": " + message
    console.log "message: " + message
    console.log "wholeMessage: " + wholeMessage
    @perform 'speak', message: wholeMessage
    # @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
