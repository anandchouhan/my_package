class UserService < ApplicationRecord
	 belongs_to  :user
	 has_many :seeker_requests, :dependent => :destroy
	 validates  :origin_country,  :origin_city, :destination_country, :destination_city, :travelling_date, :capacity, :presence  => true
	 validates :capacity,  numericality: true


	def self.search(params)
		where("origin_country LIKE ? AND origin_city LIKE ? AND destination_country LIKE ? AND destination_city LIKE ?", params[:search_origin_country], params[:search_origin_city], params[:search_destination_country], params[:search_destination_city])
	end

end

