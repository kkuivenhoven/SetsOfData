class HerbsController < ApplicationController
require 'csv'

  def graph_one
		@herbs = CSV.read(Rails.root.join('newHerbs.csv'))
  end

  def graph_two
		@herbs = Herb.all
  end

end
