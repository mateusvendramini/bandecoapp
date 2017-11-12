Rails.application.routes.draw do

  get 'restaurantes/index'
  post 'restaurantes/create'
  patch 'restaurantes/update'
  post 'restaurantes/update'
  get 'restaurantes/delete'
  get 'restaurantes/confirm'
  get 'restaurantes/data'
  get  'restaurantes/layout_central'
  get 'restaurantes/layout_fisica'
  get 'restaurantes/img_reserva'

  resources :dado_inseridos
  resources :filas
  resources :restaurantes
  resources :admins
end
