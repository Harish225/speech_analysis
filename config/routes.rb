Rails.application.routes.draw do

  get 'speakers/autocomplete_city_name'
  get 'speakers/autocomplete_state_name'
  get 'speakers/autocomplete_country_name'
  get 'speakers/autocomplete_native_language_name'
  get 'speakers/autocomplete_english_country_residence_name'

  devise_for :admins
  resources :cities
  resources :states
  resources :countries
  resources :speakers
  resources :phonemes
  resources :english_country_residences
  resources :native_languages

  get 'phonemes/input/query' => 'phonemes#query'

  devise_for :users
  get 'login/index'

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
