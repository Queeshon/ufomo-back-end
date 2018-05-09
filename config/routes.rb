Rails.application.routes.draw do
  namespace :api do
     namespace :v1 do
       resources :users, only: [:index, :show, :create, :update]
       resources :scores, only: [:index, :create]
     end
   end
 end
