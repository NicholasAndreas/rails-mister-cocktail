Rails.application.routes.draw do
    root 'cocktails#index'
    resources :cocktails, only: [:show, :index, :new, :create, :edit, :destroy] do
    resources :doses, only: [:show, :new, :create]
  end
    resources :doses, only: [:destroy]
    resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
