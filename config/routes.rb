Rails.application.routes.draw do
  resources :tweets
  root 'tweets#index'
  get 'tweets/index', to: 'tweets#index'
  get 'tweets/new'
  post 'tweets/create'
  delete 'tweets/:id' , to: "tweets#destroy"
  get 'get_image/:id', to: 'tweets#get_image'
  get 'tweets/:id', to: "tweets#show"
  get 'tweets/:id/edit' , to: "tweets#edit"
  patch "tweets/:id/update", to: "tweets#update"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
