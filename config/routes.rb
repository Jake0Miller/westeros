Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/search', to: 'search#show', as: :search
  get '/houses', to: 'houses#index', as: :houses
  get '/house', to: 'houses#show', as: :house
  get '/kombucha', to: 'kombucha#show', as: :kombucha
end
