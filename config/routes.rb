# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  root 'home#index'

  resources :categories, only: %i[index new show create destroy update edit] do
    resources :tranzactions, only: %i[index new show create destroy update edit]
  end
  resources :menus
end
