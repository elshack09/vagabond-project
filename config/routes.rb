Rails.application.routes.draw do

    get '/' => 'cities#index'

    # cities
    resources :cities do
        resources :posts
    end

end
