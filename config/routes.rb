Rails.application.routes.draw do
  resources :companies
  root 'invoices#index'
  resources :invoices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
