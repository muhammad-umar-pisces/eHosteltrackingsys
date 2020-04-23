Rails.application.routes.draw do
	root 'hostels#index'
  resources :hostels do
  	collection do 
  		get 'find'
  	end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
