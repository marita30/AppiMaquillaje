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
            # Para ardenar el precio de los productos y corriendo el arreglo como .each
           @array = @array.sort_by{ |value| value["price"].to_f}.reverse!
           binding.pry
     end


end
