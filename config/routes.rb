Rails.application.routes.draw do
#Auroracopia::Application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'episodes#index'
  resources :episodes
end
