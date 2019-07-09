Rails.application.routes.draw do
  get '/types', to: 'list_types_of_products#show'
end
