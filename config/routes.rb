Rails.application.routes.draw do
  get 'index/index'
	root 'index#index'
  resources :hostels do
  	member do
  		delete :delete_image_attachment
  	end
  	collection do 
  		get 'find'
  	end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
