require 'rest-client'
require 'pry'
require 'json'

class ListTypesOfProductsController < ApplicationController

    def index
        
       
    end

    
 def show 
    # Para traer el params de la url response.
    value = params["type"]
    
    @blush_categories = []
    @bronzer_categories = []
    @eyebrow_categories = []
    @eyeliner_categories = []
    @eyeshadow_categories = []
    @foundation_categories = []
    @lip_liner_categories = []
    @lipstick_categories = []
    @mascara_categories = []
    # Haciendo dinamica la url (con paramtros)
    response = RestClient.get "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=#{value}"
    # para desahacer el texto plano
    @array = JSON.parse(response.body)


    @array.each do |value|
        if value['product_type'] == 'blush' 
            @blush_categories << value['category']

        elsif value['product_type'] == 'bronzer'
            @bronzer_categories << value['category'] 
        
        elsif value['product_type'] == 'eyebrow'
            @eyebrow_categories << value['category'] 

        elsif value['product_type'] == 'eyeliner'
            @eyeliner_categories << value['category'] 

        elsif value['product_type'] == 'eyeshadow'
            @eyeshadow_categories << value['category'] 

        elsif value['product_type'] == 'foundation'
            @foundation_categories << value['category'] 

        elsif value['product_type'] == 'lip_liner'
            @lip_liner_categories << value['category'] 

        elsif value['product_type'] == 'lipstick'
            @lipstick_categories << value['category'] 

        elsif value['product_type'] == 'mascara'
            @mascara_categories << value['category'] 


        end

    end
    # Para hacer el valor unico , que no se repita y eliminar los valores nill o nulo.
    
    @blush_categories =  @blush_categories.uniq { |category| category }.reject(&:blank?)
    @bronzer_categories =  @bronzer_categories.uniq { |category| category }.reject(&:blank?)
    @eyebrow_categories =  @eyebrow_categories.uniq { |category| category }.reject(&:blank?)
    @eyeliner_categories =  @eyeliner_categories.uniq { |category| category }.reject(&:blank?)
    @eyeshadow_categories =  @eyeshadow_categories.uniq { |category| category }.reject(&:blank?)
    @foundation_categories =  @foundation_categories.uniq { |category| category }.reject(&:blank?)
    @lip_liner_categories =  @lip_liner_categories.uniq { |category| category }.reject(&:blank?)
    @lipstick_categories =  @lipstick_categories.uniq { |category| category }.reject(&:blank?)
    @mascara_categories =  @mascara_categories.uniq { |category| category }.reject(&:blank?)


 end

    
end
