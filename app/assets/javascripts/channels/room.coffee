App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
		alert("conneted!")
    # Called when the subscription is ready for use on the server

  disconnected: ->
		alert("disconneted!")
    # Called when the subscription has been terminated by the server

  received: (data) ->
		alert("hello! message received")
    $('#messages').append data['message']

  speak: (message) ->
		alert("speak message!")
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
