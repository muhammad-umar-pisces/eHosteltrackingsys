Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }


  get 'index/index'
	root 'index#index'
  get 'girls/index'
  get 'boys/index'
  get 'boys/show'
  get 'girls/index'
  get 'index/userprofile'
  get 'index/search'
  get 'index/latest'
  get 'users/user_profile'
  get 'users/profile_check'
  resources :searches
  resources :boys do
  end
 
  resources :hostels do
  	member do
  		delete :delete_image_attachment

  	end
    member do
     get 'hostel_details'
      
    end
    collection do
      get 'support'
    end
  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
