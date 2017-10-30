Rails.application.routes.draw do



  get 'static_pages/novo_restaurante'


  resources :dado_inseridos
  resources :filas
  resources :restaurantes
  resources :admins
end
