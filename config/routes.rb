Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "homepage#index"

  get 'homepage/index'
  get 'homepage/about_us'
end
