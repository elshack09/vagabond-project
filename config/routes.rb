Rails.application.routes.draw do

  devise_for :users
    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end

    root to: "cities#index"
end
