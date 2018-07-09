Rails.application.routes.draw do

  devise_for :admins

  root 'posts#index'

  get 'admin' => 'admin#index'

  get 'edit_post' => 'admin#edit_post'

  get 'new_post' => 'admin#new_post'
  
  post 'create_post' => 'admin#create_post'

  patch 'update_post' => 'admin#update_post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
