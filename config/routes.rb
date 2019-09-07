Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  # findmyschool.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users
      resources :schools
      resources :bookmarks
    end
  end
end
