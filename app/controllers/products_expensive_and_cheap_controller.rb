require 'rest-client'
require 'pry'
require 'json'

class ProductsExpensiveAndCheapController < ApplicationController

    def index
        @type = params["type"]
        @category =params["category"]

       
    end

    # def find(Product, Category)
    #     value = params["element"]

    #     response = RestClient.get "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=#{value}&product_category=#{value}"

    # end


end
