Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'article#index', as: :articles
  # new article
  get '/article/new', to: 'article#new', as: :new_article
  post '/article/create', to: 'article#create'

  get '/article/:id', to: 'article#show', as: :article

end
