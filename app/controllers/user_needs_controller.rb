class UserNeedsController < ApplicationController

	def index
    if params[:search_origin_country].present?   
      @user_needs = UserNeed.search(params)
    else
      @user_needs = UserNeed.all  
    end
    @seeker_request = SeekerRequest.new
    @a = User.first
    @a.update_user
  end

  def new
  	@user_need = UserNeed.new
  end

  def create
		@user_need = current_user.user_needs.build(user_need_params)
    if @user_need.save
    	redirect_to user_needs_path
    else
      render 'new'
    end
	end


  private
	def user_need_params
	  params.require(:user_need).permit(:origin_country,  :origin_city, :destination_country, :destination_city, :date, :carrying_item, :item_weight, :offering_price)
  end
end
