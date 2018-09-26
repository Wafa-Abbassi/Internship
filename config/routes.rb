Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at:'auth'
  resources :salarieds
  resources :administrators
  resources :type_absences
  resources :absences
  resources :requests
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
