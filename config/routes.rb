Rails.application.routes.draw do

  get 'restaurantes/index'
  post 'restaurantes/create'
  patch 'restaurantes/update'
  post 'restaurantes/update'
  get 'restaurantes/delete'

  resources :dado_inseridos
  resources :filas
  resources :restaurantes
  resources :admins
end
