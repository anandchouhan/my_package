class ProviderRequestsController < ApplicationController

  def create
    @provider_request = ProviderRequest.new(provider_request_params)
    @provider_request.user_need_id = current_user.id
    if @provider_request.save!
      @provider_request.send_request_email(params[:provider_request][:needer_id].to_i, @provider_request)
      redirect_to user_needs_path
    else
      render 'new'
    end
  end


  private
	def provider_request_params
	  params.require(:provider_request).permit(:message)
  end
end
