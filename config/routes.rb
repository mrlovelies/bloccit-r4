BloccitR4::Application.routes.draw do
  resources :posts

  match "about", to: 'welcome#about', via: :get

  root to: 'welcome#index'
end
