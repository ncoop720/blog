Rails.application.routes.draw do

  devise_for :admins

  root 'posts#index'
  
  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  get 'show_post' => 'posts#show'

  get 'admin' => 'admin#index'

  get 'admin_edit_post' => 'admin#edit_post'

  get 'admin_new_post' => 'admin#new_post'

  post 'admin_create_post' => 'admin#create_post'

  patch 'admin_update_post' => 'admin#update_post'

  
end
