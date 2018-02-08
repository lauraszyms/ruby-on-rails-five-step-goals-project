Rails.application.routes.draw do
  resources :categories
  root to: 'main_goals#index'
  devise_for :users
  resources :goal_steps
  resources :main_goals
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
