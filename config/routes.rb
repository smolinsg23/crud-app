Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/listing' => 'listings#index_method'
  get '/listing/new' => 'listings#new_method'
  post '/listing' => 'listings#create_method'
  get 'listing/:id' => 'listings#show_method'
  get 'listing/:id/edit' => 'listings#edit_method'
  patch'listing/:id' => 'listings#update_method'
  delete 'listing/:id' => 'listings#destroy_method'

end
