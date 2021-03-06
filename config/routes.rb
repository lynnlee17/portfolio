Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles do
    resources :comments
  end
  get '/:page' => 'pages#show'
  get '/photos/:page' => 'pages#view'


  root 'welcome#index'
end
