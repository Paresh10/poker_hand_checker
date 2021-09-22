Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "poker_hand_checker#index"
  match '/poker_hand_checker/hand_parser', to: 'poker_hand_checker#hand_parser', via: [:get, :post]
end
