class PastaTypesController < ApplicationController
  def index         # GET /restaurants
    @pasta_types = PastaType.all
  end

  # def show          # GET /restaurants/:id
  # end

end
