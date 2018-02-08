Rails.application.routes.draw do
  resources :categories
  root to: 'main_goals#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :main_goals do
  resources :goal_steps
end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
