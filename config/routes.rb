Rails.application.routes.draw do
  get 'pagina_admin/admin'

  resources :dado_inseridos
  resources :filas
  resources :restaurantes
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
