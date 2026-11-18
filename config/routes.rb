Rails.application.routes.draw do

  resources :restaurants, only: %i[index show new create] do
  resources :reviews, only: %i[new create]
  end

  root "restaurants#index"
end

#Refactorisation
# Rails.application.routes.draw do
#   resources :restaurants, only: %i[index show new create] do
#     resources :reviews, only: :create
#   end

#   root "restaurants#index"
# end
