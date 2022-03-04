Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :tracks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  authenticated :user do
    root :to => 'tracks#index', as: :authenticated_root
  end
  
  root to: "users#index"
end
