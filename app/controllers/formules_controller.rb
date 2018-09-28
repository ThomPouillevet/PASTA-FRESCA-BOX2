class FormulesController < ApplicationController

  def index
    @formules = Formule.all
  end

end
