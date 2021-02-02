Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :movies, only: [:new, :index, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update]
  resources :lists, only: [:new, :create, :show, :index] do 
    resources :list_entries 
  end

end
