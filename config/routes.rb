Rails.application.routes.draw do
  resources :employees
  root 'invoices#index'
 
  resources :companies do 
    collection { post :import }
  end  
 
  resources :invoices do
    resources :purchases, except: [:index], controller: 'invoices/purchases'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
