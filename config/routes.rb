Rails.application.routes.draw do

  devise_for :admins
  resources :cities
  resources :speakers
  resources :phonemes
  resources :english_country_residences
  resources :native_languages
  resources :countries
  resources :states
  resources :cities
  resources :speakers
  devise_for :users
  get 'login/index'
  resources :home

  devise_scope :user do
    authenticated :user do
      root 'phonemes#index', as: "authenticated_root"
    end
    unauthenticated :user do
      root to: "devise/sessions#new", as: :unauthenticate_root
    end
  end

  root 'login#index'
end
