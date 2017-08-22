Rails.application.routes.draw do

  root 'toolboxes#index'

  resources :toolboxes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
