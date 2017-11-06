class UserNeed < ApplicationRecord
	belongs_to  :user
	has_many :provider_requests, :dependent => :destroy
	validates :origin_country,  :origin_city, :destination_country, :destination_city, :date, :carrying_item, :item_weight, :offering_price, :presence  => true
	validates :item_weight, :offering_price,  numericality: true

  def self.search(params)
		where("origin_country LIKE ? AND origin_city LIKE ? AND destination_country LIKE ? AND destination_city LIKE ?", params[:search_origin_country], params[:search_origin_city], params[:search_destination_country], params[:search_destination_city])
	end
end
