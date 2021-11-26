Rails.application.routes.draw do
  devise_for :users
  root 'patients#index'
  resources :patients do
    resources :evaluations, only: [:new, :create, :edit, :update, :destory]
  end
end
