Rails.application.routes.draw do

  get '/types', to: 'list_types_of_products#index'

  get '/category/Blush', to: 'list_types_of_products#show'
  get '/category/Bronzer', to: 'list_types_of_products#show'
  get '/category/EyeBrow', to: 'list_types_of_products#show'
  get '/category/EyeLiner', to: 'list_types_of_products#show'

end
