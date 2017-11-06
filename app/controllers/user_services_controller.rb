class UserServicesController < ApplicationController
  
	def index
    if params[:search_origin_country].present?   
      @user_services = UserService.search(params)
    else
      @user_services = UserService.all
    end
    @provider_request = ProviderRequest.new
  end

  def new
  	@user_service = UserService.new
  end

  def create
		@user_service = current_user.user_services.build(user_service_params)
    if @user_service.save
    	redirect_to user_services_path
    else
      render 'new'
    end
	end
 

  private
	def user_service_params
	  params.require(:user_service).permit(:origin_country,  :origin_city, :destination_country, :destination_city, :travelling_date, :capacity)
  end
end
