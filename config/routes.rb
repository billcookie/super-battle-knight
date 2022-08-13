Rails.application.routes.draw do
  root to: "pages#home"
  resources :characters, only: [:show, :new, :create, :index] do
    resources :obligations, only: [:new, :create]
  end
  resources :battles, only: [:new, :create, :index, :show] do
    resources :obligations, only: [:new, :create]
  end
end
