Rails.application.routes.draw do

  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => 'users#show'
    post 'users' => 'users#create'
    patch 'users/:id' => 'users#update'
    post 'day_and_times' => 'day_and_times#create'
    get "/gyms/:id" => 'gyms#show'
  end
end
