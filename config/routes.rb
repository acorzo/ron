Rails.application.routes.draw do
  root 'invoices#index'
 
  resources :companies do 
    collection { post :import }
  end  
 
  resources :invoices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
