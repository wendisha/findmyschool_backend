Rails.application.routes.draw do
  # findmyschool.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users
      resources :schools
      resources :bookmarks
    end
  end
end
