Rails.application.routes.draw do
  root 'tweets#index'
  get 'tweets/index'
  get 'tweets/create'
  delete 'tweets/#{id}' , to: "tweets#destroy"
  get 'tweets/#{id}', to: "tweets#show"
  get 'tweets/#{id}/edit' , to: "tweets#edit"
  patch "tweets/#{id}/update", to: "tweets#update"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
