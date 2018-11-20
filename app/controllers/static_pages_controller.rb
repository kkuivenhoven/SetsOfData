class StaticPagesController < ApplicationController
	require 'socket'
	require 'resolv-replace'

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
			if params[:chatUser].nil?
				params[:chatUser] = true
		  else
				params[:chatUser] = "SHOULD"
			end
			# ip_address = request.remote_ip
			ip = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
			ip_address = ip.ip_address
			if User.find_by(ip_addr: ip_address).nil?
				words = ["allspice", "anise", "basil", "berbere","borage","caraway","capers","chervil","chives","cilantro","cicely","dill","epazote","fennel","galangal","garlic","ginger","harissa","hyssop","lavender","lovage","Marjoram","mace","mint","Nasturtium","nutmeg","onion","oregano","paprika","parsley","pepper","rosemary","saffron","sage","savory","sorrel","tarragon","thyme","turmeric","vanilla","wintergreen"]
				nums = [1,3,4,5,7,10,12,6,8,9,14,15,16,17,19,20,22,24,25,26,27,28,29,30,31,32,33,35,37,45,46,47,48,49,50,51,52,53,61,62,67,68,70,71,72,75,76]
				sn_word = words[rand(words.length)]
				sn_num = nums[rand(nums.length)]
				cp_SnNum = sn_num.to_s
				total = sn_word + "_" + cp_SnNum
				User.create(:ip_addr => ip_address, :sn_name => sn_word, :sn_num => sn_num, :sn_total => total)
				@user = User.find_by(ip_addr: ip_address)
			else
				@user = User.find_by(ip_addr: ip_address)
			end
   end

end
