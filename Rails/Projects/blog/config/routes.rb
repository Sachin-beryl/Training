Rails.application.routes.draw do
 
  #get '/articles/index', to: 'articles#index'

  root "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
