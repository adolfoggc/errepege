Rails.application.routes.draw do
  
  resources :players
  devise_for :users
  resources :scenarios
  #resources :npcs
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
  get '/calculadora' => 'home#calculadora', as: :calculadora
  get '/ficha', to: 'home#char_maker', as: :char_maker
  get '/npcs', to: 'npcs#index', as: :npc_list
  get '/npcs/:id', to: 'npcs#show', as: :npc_show

end