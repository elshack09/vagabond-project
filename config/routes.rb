Rails.application.routes.draw do

    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end
    get '/cities/:id' => 'cities#show'

    #posts
    get '/cities/:city_id/posts/:id' => 'posts#show'
    get '/cities/:city_id/posts/new' => 'posts#new'
    get '/cities/:city_id/posts' => 'posts#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
