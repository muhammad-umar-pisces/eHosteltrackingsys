Rails.application.routes.draw do
  get 'index/index'
	root 'index#index'
  get 'girls/index'
  get 'boys/index'
  get 'boys/show'
  resources :boys do
  end
 
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
