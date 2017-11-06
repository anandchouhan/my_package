class SeekerRequestsController < ApplicationController


  def create
		@seeker_request = SeekerRequest.new(seeker_request_params)
    @seeker_request.user_service_id = current_user.id
    if @seeker_request.save
      @seeker_request.send_request_email(params[:seeker_request][:needer_id].to_i, @seeker_request)
      redirect_to user_needs_path
    else
      render 'new'
    end
	end


  private
	def seeker_request_params
	  params.require(:seeker_request).permit(:weight, :message, :user_service_id)
  end
end
