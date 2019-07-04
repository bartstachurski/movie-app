Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/movies' => 'movies#index'
    get '/actors_query' => 'actors#show'
    get '/actors/:id' => 'actors#show'
    post '/actors' => 'actors#show'
    get '/movies/:id' => 'movies#show'
    get '/movies_ascending_year' => 'movies#index_ascending_year'
  end
end
