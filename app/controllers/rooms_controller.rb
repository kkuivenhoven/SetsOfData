class RoomsController < ApplicationController

  def show
		@messages = Message.all
		puts "HERE IS @messages PLEASE VIEW"
		puts @messages
		puts "END OF @messages"
  end

end
