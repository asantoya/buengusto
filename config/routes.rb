Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  resources :users do
    resources :recetas, module: :users, only: [:index]
    resources :favorites
  end

  resources :recetas
end
