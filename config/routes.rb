Rails.application.routes.draw do
  resources :mtg_cards
  root "mtg_cards#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
