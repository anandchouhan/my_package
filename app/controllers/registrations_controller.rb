class RegistrationsController < Devise::RegistrationsController
	respond_to :html, :js
  def new
    super
  end
end 