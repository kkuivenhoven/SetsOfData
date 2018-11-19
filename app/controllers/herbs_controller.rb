class HerbsController < ApplicationController
	require 'csv'
  require 'socket'
  require 'resolv-replace'

  before_action :load_messages
	
	def show
		if !params[:id].nil?
			@herb = Herb.where(:id => params[:id]).first
		end
	end

  def graph_one
		@herbs = CSV.read(Rails.root.join('woH_herbs.csv'))
  end

  def graph_two
		@herbs = Herb.all
  end

  def graph_three
		@herbs = CSV.read(Rails.root.join('woH_herbs.csv'))
		# @herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_four
		@herbs = CSV.read(Rails.root.join('woH_herbs.csv'))
		# @herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_five
		@herbs = CSV.read(Rails.root.join('woH_herbs.csv'))
		# @herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_six
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_seven
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end


	private
	
   def load_messages
      @messages = Message.all
      if params[:chatUser].nil?
        params[:chatUser] = true
      else
        params[:chatUser] = "SHOULD"
      end 
      # ip_address = request.remote_ip
      ip = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
      ip_address = ip.ip_address
      if User.find_by(ip_addr: ip_address).nil?
        words = ["allspice", "anise", "basil", "berbere","capers","chervil","cicely","dill","epazote","fennel","galangal","ginger","harissa","hyssop","lavender","lovage","mace","mint","nutmeg","onion","paprika","pepper","rosemary","saffron","savory","tarragon","turmeric","vanilla","wintergreen"]
        nums = [1,3,4,5,7,10,12,6,8,9,14,15,16,17,19,20,22,24,25,26,27,28,29,30,31,32]
        sn_word = words[rand(words.length)]
        sn_num = nums[rand(nums.length)]
        cp_SnNum = sn_num.to_s
        total = sn_word + "_" + cp_SnNum
        User.create(:ip_addr => ip_address, :sn_name => sn_word, :sn_num => sn_num, :sn_total => total)
      else
        @user = User.find_by(ip_addr: ip_address)
      end 
   end 
end
