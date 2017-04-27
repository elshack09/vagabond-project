Rails.application.routes.draw do

    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end
    get '/cities/:id' => 'cities#show'

    #posts
    get '/cities/:city_id/posts' => 'posts#index'
    post '/cities/:city_id/posts' => 'posts#create'
    get '/cities/:city_id/posts/new' => 'posts#new'
    get '/cities/:city_id/posts/:id' => 'posts#show'
    delete '/cities/:city_id/posts/:id' => 'posts#destroy'

end
