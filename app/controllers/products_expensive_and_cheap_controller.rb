require 'rest-client'
require 'pry'
require 'json'

class ProductsExpensiveAndCheapController < ApplicationController

    def index
        @type = params["type"]
        @category =params["category"]
        @Information = find(@type,@category)

       
    end

    def find(type, category)
        response = RestClient.get "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=#{type}&product_category=#{category}"
        @array = JSON.parse(response.body)
            # Para arreglar el precio de los productos
           @array = @array.sort_by{ |value| value["price"].to_f}
        

    

    end


end
