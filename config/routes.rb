Rails.application.routes.draw do
  
  
 devise_for :users
 root to: "homes#top"
 
   resources :books, only: [:index,]
   resources :users, only: [:index, :show]
 
 devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
