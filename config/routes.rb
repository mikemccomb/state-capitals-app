Rails.application.routes.draw do
  get "/capitals" => "capitals#index"

  post "/capitals/" => "capitals#create"

  get "/capitals/:id" => "capitals#show"

  patch "capitals/:id" => "capitals#update"

  delete "capitals/:id" => "capitals#destroy"
end
