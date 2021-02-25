Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do 
    get "/capitalize" => "perams#name_capitalized"
    get "/guess_param/:userguess" => "perams#guess"
    post "/body_paramater" => "perams#guess"
  end
end
