require 'rest-client'
require 'pry'
require 'json'

class ListTypesOfProductsController < ApplicationController

    def show
        @blush_categories = []
        @bronzer_categories = []
        @eyebrow_categories = []
        response = RestClient.get 'http://makeup-api.herokuapp.com/api/v1/products.json? '
        # para desahacer el texto plano
        @array = JSON.parse(response.body)


        @array.each do |value|
            if value['product_type'] == 'blush' 
                @blush_categories << value['category']

            elsif value['product_type'] == 'bronzer'
                @bronzer_categories << value['category'] 
            
            elsif value['product_type'] == 'eyebrow'
                @eyebrow_categories << value['category'] 

            end

        end
        
        @blush_categories =  @blush_categories.uniq { |category| category }.reject(&:blank?)
        @bronzer_categories =  @bronzer_categories.uniq { |category| category }.reject(&:blank?)
        @eyebrow_categories =  @eyebrow_categories.uniq { |category| category }.reject(&:blank?)
       
        binding.pry
        
    end

    

    
end
