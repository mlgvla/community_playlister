Rails.application.routes.draw do

    root 'sessions#welcome'

    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    get '/auth/:provider/callback', to: 'sessions#omniauth'

    

    resources :users, only: [:show]
    resources :playlists, only: [:index, :new, :create, :show, :edit, :destroy]

    resources :users do
        resources :playlists, shallow: true
    end

    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

