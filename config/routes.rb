Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'posts#index', as: 'home'
get 'about' => 'pages#about', as: 'about'
get 'users/index' => 'users#index'
get 'signup' => 'users#new'
post 'signup' => 'users#create'
get 'users/:id/edit' => 'users#edit'
get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'
resources :users
	
	resources :posts do
		resources :comments
	end
end
