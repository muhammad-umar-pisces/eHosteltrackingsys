Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


  get 'index/index'
	root 'index#index'
  get 'girls/index'
  get 'boys/index'
  get 'boys/show'
  get 'girls/index'
  get 'index/userprofile'
  get 'index/search'
  resources :searches
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
