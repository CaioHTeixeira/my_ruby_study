Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create] 
  #é apenas index e create, não vai ter show, delete, update..
end
