Rails.application.routes.draw do

  resources :personalizations
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
<<<<<<< HEAD

  post "/home/default", :as => :change_style_default
  post "/home/blue_dark", :as => :change_style_blue_dark
  post "/home/blue", :as => :change_style_blue
  post "/home/default_dark", :as => :change_style_default_dark
  post "/home/green_dark", :as => :change_style_green_dark
  post "/home/green", :as => :change_style_green
  post "/home/megna_dark", :as => :change_style_megna_dark
  post "/home/megna", :as => :change_style_megna
  post "/home/purple_dark", :as => :change_style_purple_dark
  post "/home/purple", :as => :change_style_purple
  post "/home/red_dark", :as => :change_style_red_dark
  post "/home/red", :as => :change_style_red

=======
  resources :favourites
>>>>>>> a7d48f9dbeeb063d0160ddf4e12fac73c839e72d
end
