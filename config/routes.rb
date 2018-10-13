Rails.application.routes.draw do

  resources :players
  resources :scenarios, only: [:index, :show]
  resources :npcs
  resources :skills
  resources :dnd_classes
  resources :races
  resources :roles


  devise_for :users, path: '', controllers: { 
    #path indica endereço anterior. Neste caso, o endereço será baseado na raiz do site
    #qualquer endereço extra é acrescentado ao path
    sessions: 'users/sessions' #informando o controller usado
  }, path_names: { #forçando nomes específicos
   sign_in: 'logar'
  }

  devise_for :masters, path: '/dm', controllers: {
    #path indica endereço anterior. Neste caso, o endereço será baseado em /dm
    #qualquer endereço extra é acrescentado ao path
    sessions: 'masters/sessions' #informando o controller usado
  }, path_names: { #forçando nomes específicos
   sign_in: 'logar'
  }

  authenticated :user do
    scope "/" do
       #get 'logar', to: 'devise/sessions#new'
      get '/families' => 'home#families', as: :user_families
      get '/fichas', to: 'players#user_players', as: :user_chars
      get '/npcs', to: 'npcs#index', as: :user_npc_list
      get '/npcs/:id', to: 'npcs#show', as: :user_npc_show

      root 'home#index'
    end
  end

  authenticated :master do
    scope "/dm" do
      get '/room' => 'generator#room', as: :rooms 
      get '/encounter' => 'generator#random_encounter', as: :random_encounter

      get '/npc_list' => 'generator#npc', as: :dm_random_npcs
      get '/families' => 'home#families', as: :dm_families
      get '/ficha', to: 'players#index', as: :dm_char_maker
      get '/npcs', to: 'npcs#index', as: :dm_npc_list
      get '/npcs/:id', to: 'npcs#show', as: :dm_npc_show

      root 'home#index'  
    end
  end

  unauthenticated :user do
    scope "/" do

      get '/families' => 'home#families', as: :families
      get '/calculadora' => 'home#calculadora', as: :calculadora
      get '/ficha', to: 'players#index', as: :char_maker
      get '/npcs', to: 'npcs#index', as: :npc_list
      get '/npcs/:id', to: 'npcs#show', as: :npc_show

      root 'home#index'
      #get '/logar', to: 'users/sessions#new', as: :user_login
      #get '/dm/logar', to: 'masters/sessions#new', as: :master_login
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



      


end