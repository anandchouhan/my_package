Rails.application.routes.draw do
	root :to => "users#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :user_needs, :user_services, :user_services, :provider_requests, :seeker_requests 

end