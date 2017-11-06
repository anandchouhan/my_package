class ProviderRequest < ApplicationRecord
	attr_accessor :provider
	belongs_to :user_need, :class_name => "User", :foreign_key => "user_need_id"

	def send_request_email(provider_params, needer_params)
		request_by = "needer"
		to = UserService.where(id: provider_params).first.user
		from = User.where(id: self.user_need_id).first
		UserMailer.send_provider_email(to, from, self, request_by).deliver
	end

	def update_user
		binding.pry
	end
end
