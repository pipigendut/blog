Dexcode::Application.routes.draw do
  get 'articles/index'

  get 'articles/create'

  devise_for :users

  resources :errors, only: [:create]

  get '/services' => 'home#services', :as => :services
  get '/about' => 'home#about', :as => :about
  get '/contact_us' => 'home#contact_us', :as => :contact_us
  post '/contact_us' => 'home#contact_us'

  get '/ruby-on-rails-development' => 'services#ruby_on_rails'
  get '/react-native-development' => 'services#react_native'

  # get '/people' => 'home#people', :as => :people

  get '/people' => 'home#people', :as => :people

  get '/careers' => 'home#careers', :as => :careers

  get '/software-testing' => 'home#software_testing'

  get '/career/web-designer' => 'careers#web_designer', :as => :web_designer
  get '/career/web-programmer' => 'careers#web_programmer', :as => :web_programmer

  get '/lens-culture-modern-photography-platform' => 'case_studies#lens_culture'
  get '/stringwire-citizen-journalism-platform' => 'case_studies#stringwire'
  get '/savsale-dress-sales-search-engine' => 'case_studies#savsale'
  get '/hilario-video-comedy-sharing-platform' => 'case_studies#hilario'
  get '/flixus-movie-plot-platform' => 'case_studies#flixus'

  get '/tags/:tag', to: 'blogs#index', as: "tag"
  get '/blogs/:id' => 'blogs#show', as: "blog"
  resources :blogs, only: [:index]
  resources :articles
  resources :case_studies

  root :to => 'home#index'
end
