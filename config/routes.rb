Rails.application.routes.draw do
  root 'articles#index'

  devise_for :users

  resources :users do
  resources :articles
end

  get 'articles/home'
  get 'welcome/index'
  get 'articles/thumbnail'
resources :comments
resources :articles do
  resources :comments
  resources :users
end

end
