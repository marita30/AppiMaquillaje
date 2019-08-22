require 'rest-client'
require 'pry'
require 'json'


class PerfilUserController < ApplicationController
    def show
        @like = Like.where("user_id = ?", current_user.id)
        response = RestClient.get  "http://makeup-api.herokuapp.com/api/v1/products.json"
        @array = JSON.parse(response.body)
        @elements_with_like = []
        @like.each do |value|
            # comparando arreglo del like con el array y select el id de la api
            @elements_with_like << @array.select {|record| record["id"]== value["id_api"].to_i}

        end
       
        @elements_with_like = @elements_with_like.flatten
        binding.pry
        @elements_with_like =  @elements_with_like.uniq { |record| record["id"].to_i }.reject(&:blank?)
       

    end
end
