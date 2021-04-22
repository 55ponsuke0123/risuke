Rails.application.routes.draw do
  devise_for :users
  root 'patients#index'
  resources :patients do
  end
end
