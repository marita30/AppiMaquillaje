Rails.application.routes.draw do

  devise_for :users 
# Definis la ruta y luego lo del controlador

  get '/types', to: 'list_types_of_products#index'

  get '/', to: 'static_page#index'




  get '/category/Blush', to: 'list_types_of_products#show'
  get '/category/Bronzer', to: 'list_types_of_products#show'
  get '/category/EyeBrow', to: 'list_types_of_products#show'
  get '/category/EyeLiner', to: 'list_types_of_products#show'
  get '/category/EyeShadow', to: 'list_types_of_products#show'
  get '/category/Foundation', to: 'list_types_of_products#show'
  get '/category/LipLiner', to: 'list_types_of_products#show'
  get '/category/Mascara', to: 'list_types_of_products#show'
  get '/category/lipstick', to: 'list_types_of_products#show'
  get '/category/nail_polish', to: 'list_types_of_products#show'

# rutas para el otro metodo index.
  get '/type/blush/category', to: 'products_expensive_and_cheap#index'
  get '/type/bronzer/category', to: 'products_expensive_and_cheap#index'
  get '/type/eyebrow/category', to: 'products_expensive_and_cheap#index'
  get '/type/eyeliner/category', to: 'products_expensive_and_cheap#index'
  get '/type/eyeshadow/category', to: 'products_expensive_and_cheap#index'
  get '/type/foundation/category', to: 'products_expensive_and_cheap#index'
  get '/type/lipliner/category', to: 'products_expensive_and_cheap#index'
  get '/type/mascara/category', to: 'products_expensive_and_cheap#index'

 
  

end
