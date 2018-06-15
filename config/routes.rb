Rails.application.routes.draw do

  resources :person_professions
  resources :grade_academics
  resources :person_skills
  resources :professions
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
  resources :convocatories
  resources :designacions
  resources :anuncios
  resources :departamentos
  resources :detalle_aplicacions
  resources :evaluacion_psicologicas
  resources :evaluacion_tecnicas
  resources :asig_details
  resources :asig_stocks
  resources :stocks
  resources :stock_categories
  resources :traning_users
  resources :tranings
  resources :favourites
end
