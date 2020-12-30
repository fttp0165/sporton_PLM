Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'projects#index'
  resources :projects 
  resources :test_modes 
  resources :test_items
  resources :comments,shallow: true,except:[:index,:new,:show]
end
