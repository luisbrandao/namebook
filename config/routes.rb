Rails.application.routes.draw do
  resources :books
  resources :names
  resources :families
  resources :ships
  resources :orbs
  resources :races
  resources :ship_sizes
  resources :base_types
  resources :orb_types
  get 'static_page/home'
  root 'static_page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
