Rails.application.routes.draw do

  get 'friends/index'
  get 'friends/destroy'
  resources :friend_requests
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => 'users#show'
    post 'users' => 'users#create'
    patch 'users/:id' => 'users#update'
    post 'day_and_times' => 'day_and_times#create'
    get 'day_and_times/:id' => 'day_and_times#show'
    get 'day_and_times' => 'day_and_times#index'
    get "/gyms/:id" => 'gyms#show'
    post 'statuses' => 'statuses#create'
    post 'friend_requests' => 'friend_requests#create'
    post 'sessions' => 'sessions#create'
    post 'friendships' => 'friendships#create'
    get 'gyms' => 'gyms#index'
    get 'statuses' => 'statuses#index'
    post 'attendees' => 'attendees#create'

  end
  post 'friendships' => 'friends#accept_friend_request'
  get 'friend_requests' => 'friend_requests#index'
  patch 'friend_requests' => 'friend_requests#update'
  delete 'friend_requests/:user_id' => 'friend_requests#destroy'
end
