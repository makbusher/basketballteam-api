Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/teams" => "teams#index"
  post "/teams" => "teams#create"
  get "/teams/:id" => "teams#show"
  patch "/teams/:id" => "teams#update"
end
