Rails.application.routes.draw do

  devise_for :admins

  root 'posts#index'

  get 'admin' => 'admin#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
