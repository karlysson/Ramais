Rails.application.routes.draw do

  ########################
  # Site
  ########################
  root 'home#index' #home

  devise_for :users
  resources :users

  get 'empresa'       => 'home#empresa'
  get 'depto'         => 'home#depto'
  get 'departamento'  => 'home#departamento'
  get 'ramal_loja'    => 'home#ramal_loja'
  get 'lista'         => 'home#lista'
  get 'lista_impressa'    => 'home#lista_impressa'
  resources :departaments
  resources :stores
  resources :employees
  resources :cities
  resources :states
  resources :marks
end
