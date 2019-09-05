Rails.application.routes.draw do
  # findmyschool.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users
      resources :schools
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
