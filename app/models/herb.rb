class Herb < ApplicationRecord
	require 'csv'

	def self.import(file)
		CSV.foreach(Rails.root.join('newHerbs.csv'), headers: true) do |row|
			Herb.create! row.to_hash
		end
	end

end
