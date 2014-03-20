BloccitR4::Application.routes.draw do
  devise_for :users
  resources :posts

  match "about", to: 'welcome#about', via: :get

  root to: 'welcome#index'
end
