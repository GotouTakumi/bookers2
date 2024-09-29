Rails.application.routes.draw do
  
  get 'users/index'
  get 'users/show'
 devise_for :users
 root to: "homes#top"
 
   resources :books, only: [:index,]
 
 devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
