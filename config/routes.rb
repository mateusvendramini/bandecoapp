Rails.application.routes.draw do
  get 'pagina_admin/admin'
  get 'admins/index'
  post 'admins/create'
  post 'admins/createCookie'
  post 'admins/createWCookies'
  patch 'admins/update'
  get 'admins/delete'
  post 'admins/update'
  post "admins/delete_multiple"
  resources :dado_inseridos
  resources :filas
  resources :restaurantes
  resources :admins
  resources :admins, :collection => {:delete_multiple => :post}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
