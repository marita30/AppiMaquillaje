require 'rest-client'
require 'pry'
require 'json'

class ProductsExpensiveAndCheapController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @type = params["type"]
        @category =params["category"]
        @Information = find(@type,@category)

       
    end

    # metodo para asar los parametros y arreglar los prductos para luego sacar los mas caros y lo mas baratos.

    def find(type, category)
        response = RestClient.get "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=#{type}&product_category=#{category}"
        @array = JSON.parse(response.body)
            # Para ordenar el precio de los productos y corriendo el arreglo como .each
           @array = @array.sort_by{ |value| value["price"].to_f}.reverse!
           @infor = "Product: #{type}, Category: #{category}" 
        
     end


end
