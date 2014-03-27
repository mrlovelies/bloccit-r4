BloccitR4::Application.routes.draw do
  get "comments/new"
  devise_for :users
  resources :users, only: [:update]

  resources :topics do
  	resources :posts, except: [:index] do
  		resources :comments, only: [:create, :destroy]
  	end
  end

  match "about", to: 'welcome#about', via: :get

  root to: 'welcome#index'
end
