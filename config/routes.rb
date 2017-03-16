Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :articles
  post '/articles/new', to: 'articles#create'
  post '/articles/:id/edit', to: 'articles#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
