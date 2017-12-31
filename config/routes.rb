Rails.application.routes.draw do
  
  resources :skills
  resources :dnd_classes
  root 'generator#encounter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/room' => 'generator#room', as: :rooms 
  get '/encounter' => 'generator#random_encounter', as: :random_encounter
end