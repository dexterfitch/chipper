Rails.application.routes.draw do
  get "hashtags/:hashtag",   to: "hashtags#show",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags
  root 'home#index'

  devise_for :users

  resources :posts, except: [:index, :show]
end
