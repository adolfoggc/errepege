class Location < ApplicationRecord
	belongs_to :scenario, dependent: :destroy

end
