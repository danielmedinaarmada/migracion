Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'polizas#index', as: 'polizas_index'
resources :polizas
end
