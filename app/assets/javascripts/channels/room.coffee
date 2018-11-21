App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log "in received (data) function"
    $('#messages').append data['message']

  speak: (message) ->
    sn_name = $('#user_sn')
    screenName = $('#user_sn')[0].innerHTML
    wholeMessage = screenName + ": " + message
    console.log "speak() window.location.protocol: " + window.location.protocol
    console.log "speak() window.location.host: " + window.location.host
    console.log "speak() window.location.pathname: " + window.location.pathname
    console.log "message: " + message
    console.log "wholeMessage: " + wholeMessage
    @perform 'speak', message: wholeMessage
    # @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    console.log "in $(document).on function!!!"
    console.log "window.location.protocol: " + window.location.protocol
    console.log "window.location.host: " + window.location.host
    console.log "window.location.pathname: " + window.location.pathname
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
