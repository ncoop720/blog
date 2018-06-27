Rails.application.routes.draw do

  devise_for :admins

  root 'posts#index'

  get 'admin' => 'admin#index'

  get 'edit_post' => 'admin#edit_post'

  patch 'update_post' => 'admin#update_post'

  # put ''

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
