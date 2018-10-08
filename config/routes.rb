Rails.application.routes.draw do

  resources :flowernames
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "flowername#index"
end
