Rails.application.routes.draw do
  root 'form_details#new'
  resources :form_details
end
