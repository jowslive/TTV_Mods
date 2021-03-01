Rails.application.routes.draw do
  # Rotas do Devise
  devise_for :users
  # Rotas de Bots e Configs
  resources :bots, only: [:create, :edit, :index, :new, :show, :update] do
    resources :configs, only: [:create, :edit, :new, :update]
  end
  resources :bots, only: [:destroy]
  resources :configs, only: [:destroy]

  # Rotas de Favorites
  resources :favorites, only: [:index, :create, :destroy]

  # Pagina Inicial
  root to: 'pages#home'
end
