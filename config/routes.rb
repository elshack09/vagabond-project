Rails.application.routes.draw do
  get '/' => 'cities#index'
  get '/cities/:id' => 'cities#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
