class HerbsController < ApplicationController
require 'csv'

  def graph_one
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
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

end
