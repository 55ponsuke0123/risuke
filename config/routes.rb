Rails.application.routes.draw do
  devise_for :users
  root 'patients#index'
  resources :patients, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
