class UserMailer < ApplicationMailer

	def send_provider_email(to, from, carry_package_detail, request_by)
		@from, @to, @carry_package_detail, @request_by = from, to, carry_package_detail, request_by
    mail( :to => @to.email, :carry_package_detail =>  @carry_package_detail, :from => @from.email,  :request_by => @request_by)
  end

end
