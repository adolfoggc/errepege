Rails.application.routes.draw do
  
  resources :scenarios
  resources :npcs
  resources :skills
  resources :dnd_classes
  resources :races
  resources :roles

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/room' => 'generator#room', as: :rooms 
  get '/encounter' => 'generator#random_encounter', as: :random_encounter
  get '/npc_list' => 'generator#npc', as: :random_npcs
  get '/families' => 'home#families', as: :families
end