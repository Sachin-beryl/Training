Rails.application.routes.draw do
  root 'form_details#index'
  resources :form_details
end
