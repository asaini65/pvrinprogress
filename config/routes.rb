Rails.application.routes.draw do
  devise_for :users
  root 'shows#index'
  resources :shows

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
