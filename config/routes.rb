Rails.application.routes.draw do

  root 'toolboxes#index'

  resources :toolboxes do
    resources :choices
  end

  resources :prozesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
