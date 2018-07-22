Rails.application.routes.draw do
  

  get 'users/profile_page'

  namespace :api do
    namespace :v1 do
      get 'home', to: 'posts#home'
      post 'users/sign_in', to: 'users#sign_in'
    end
    namespace :v2 do
      get 'home', to: 'posts#home'
      post 'users/sign_in', to: 'users#sign_in'
    end
  end

  post 'likes/toggle/:post_id', to: 'likes#toggle', as: :toggle_like

  post 'comments/create', as: :comments
  delete 'comments/:id', to: 'comments#destroy', as: :destroy_comment

	# Post routes
  root 'posts#home'
  post 'posts/create', as: :posts
  delete 'posts/:id', to: 'posts#destroy', as: :destroy_post

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'posts/home', to: 'posts#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/profile/:id', to: 'users#profile_page'
  post 'users/upload_avatar/:id', to: 'users#upload_avatar', as: :user_avatar_upload

end
