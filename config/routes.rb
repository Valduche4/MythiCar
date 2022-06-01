Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/user' => "users#show", :as => :user_root
  resources :users, only: :show
  resources :cars do
    resources :papers, only: [:show, :new, :create]
    resources :maintenances, only: [:show, :new, :create]
    resources :features, only: [:show, :new, :create, :edit, :update]
  end
  resources :papers, only: :destroy
  resources :maintenances, only: :destroy
  resources :features, only: :destroy

  resources :events do
    resources :participations, only: [:create]
  end

  # resources :chatrooms, only: [:index, :show, :new, :create, :destroy] do
  #   resources :messages, only: [:create]
  # end

  resources :garages, only: [:index]
end
