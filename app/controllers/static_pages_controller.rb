class StaticPagesController < ApplicationController
	before_action :load_messages

	def home
	end

	def info
	end

	def sources
	end

	private
   def load_messages
      @messages = Message.all
   end

end
