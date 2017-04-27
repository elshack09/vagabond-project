Rails.application.routes.draw do

    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end
<<<<<<< HEAD




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
    # get '/cities/:id' => 'cities#show'
    #
    # #posts
    # get '/cities/:city_id/posts' => 'posts#index'
    # post '/cities/:city_id/posts' => 'posts#create'
    # get '/cities/:city_id/posts/new' => 'posts#new'
    # get '/cities/:city_id/posts/:id' => 'posts#show'
    # delete '/cities/:city_id/posts/:id' => 'posts#destroy'

>>>>>>> 729597c1b60fa9cb64212fc4bf64c43000efd377
end
