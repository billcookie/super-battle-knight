Rails.application.routes.draw do
  root to: "characters#index"
  resources :characters, only: [:show, :new, :create] do
    resources :obligations, only: [:new, :create]
  end
  resources :battles, only: [:new, :create, :index, :show] do
    resources :obligations, only: [:new, :create]
  end
end
