Rails.application.routes.draw do
    devise_for :users, controllers: {
            registrations: 'users/registrations'
        }
    get '/' => 'cities#index'
    get '/profile' => 'users#show'

    # cities
    resources :cities do
        resources :posts
    end

    root to: "cities#index"
end
