Rails.application.routes.draw do

    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end
    get '/cities/:id/posts' => 'cities#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
