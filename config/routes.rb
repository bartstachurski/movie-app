Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/movies' => 'movies#index'
    get '/movies/:id' => 'movies#show'
    post '/movies' => 'movies#create'
    patch '/movies/:id' => 'movies#update'
    delete '/movies/:id' => 'movies#destroy'
    get '/movies_ascending_year' => 'movies#index_ascending_year'
    get '/actors' => 'actors#index'
    get '/actors/:id' => 'actors#show'
    post '/actors' => 'actors#create'
    patch '/actors/:id' => 'actors#update'
    delete '/actors/:id' => 'actors#destroy'
    post '/users' => 'users#create'
    post 'sessions' => 'sessions#create'
  end
end
