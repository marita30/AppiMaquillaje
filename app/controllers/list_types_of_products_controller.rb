require 'rest-client'
require 'pry'
require 'json'

class ListTypesOfProductsController < ApplicationController

    def show
        @blush_categories = []
        response = RestClient.get 'http://makeup-api.herokuapp.com/api/v1/products.json? '
        # para desahacer el texto plano
        @array = JSON.parse(response.body)


        @array.each do |value|
            if value['product_type'] == 'blush' 
                @blush_categories << value['category']
            end

        end
        # para hacer el valor unico , que no se repita y el reject es para eliminar valores en blanco o nill
        @blush_categories =  @blush_categories.uniq { |category| category }.reject(&:blank?)
       
        binding.pry
        
    end

    

    
end
