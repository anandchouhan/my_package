class SeekerRequest < ApplicationRecord
	attr_accessor :needer_id
	belongs_to :user_service, :class_name => "User", :foreign_key => "user_service_id"
	
	def send_request_email(needer_params, provider_params)
		request_by = "provider"
		to = UserNeed.where(id: needer_params).first.user
		from =  User.where(id: self.user_service_id).first
		UserMailer.send_provider_email(to, from, self, request_by).deliver
	end

end
