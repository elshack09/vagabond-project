Rails.application.routes.draw do

    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end
    get '/cities/:id' => 'cities#show'

    #posts
    get '/cities/:city_id/posts' => 'posts#index'
    get '/cities/:city_id/posts/:id' => 'posts#show'
    get '/posts/:post_id/edit', to:'posts#edit', as: 'edit_post'
    get '/cities/:city_id/posts/new' => 'posts#new'
    post '/cities/:city_id/posts' => 'posts#create'
    get '/cities/:city_id/posts' => 'posts#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
