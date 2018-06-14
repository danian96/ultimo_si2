Rails.application.routes.draw do
  resources :pay_types
  resources :contract_types
  resources :assistances
  resources :memorandums
  resources :memorandum_types
  resources :skills
  get 'home/home'
  get 'home/index'
  resources :people
  resources :civil_states
  resources :roles
  get 'prueba/prueba'
  get "/prueba/set_permission", :as => :set_permission
  devise_for :users, only: [:session, :registration], path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root to: 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'home#home', as: :unauthenticated_root
    end
  end
end