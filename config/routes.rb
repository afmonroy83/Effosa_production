Rails.application.routes.draw do
  get 'contactanos'    => 'contact/index', to: 'contact#index', as: "contactanos"
  get 'nosotros'    =>'about/index', to: 'about#index', as: "nosotros"
  	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	resources :posts
	root to: 'posts#index'
end
