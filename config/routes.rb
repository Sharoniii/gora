Rails.application.routes.draw do
  resources :zones
  resources :menus
  devise_for :users
  root to: 'home#index'

 
  put '/goragora(/:zone_id)', to: 'home#goragora', as:'search_zone'
  put '/goragoras(/:category)', to: 'home#goragora', as:'search_category'

  put '/goragorasum', to: 'home#goragora', as:'search_sum'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
