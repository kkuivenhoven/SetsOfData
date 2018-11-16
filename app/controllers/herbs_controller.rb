class HerbsController < ApplicationController
	require 'csv'
	
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
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_four
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_five
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_six
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_seven
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

end
