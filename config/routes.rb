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

  get 'dado_inseridos/delete'
  get 'dado_inseridos/create_url'
  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get 'static_pages/novo_restaurante'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'sessions/new'

  get 'pagina_admin/admin'
  get 'admins/index'
  post 'admins/create'
  post 'admins/createCookie'
  post 'admins/createWCookies'
  patch 'admins/update'
  get 'admins/delete'
  post 'admins/update'
  post "admins/delete_multiple"
  post "admins/select_multiple"

  resources :dado_inseridos
  resources :filas
  resources :restaurantes
  resources :admins
  resources :admins, :collection => {:delete_multiple => :post}

  root 'application#hello'
end
