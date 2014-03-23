BloccitR4::Application.routes.draw do
  devise_for :users
  resources :users, only: [:update]

  resources :topics do
  	resources :posts, except: [:index]
  end

  match "about", to: 'welcome#about', via: :get

  root to: 'welcome#index'
end
