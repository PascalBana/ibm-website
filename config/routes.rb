Rails.application.routes.draw do
  root to: "homepage#index"

  get 'homepage/index'
  get 'homepage/about_us'
end
