Rails.application.routes.draw do
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :cart, only: [] do
    get :add
    get :remove
  end
  
  root to:"pages#index"
end
