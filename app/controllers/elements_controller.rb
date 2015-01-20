class ElementsController < ApplicationController

  def show
    @element = Element.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @element }
    end
    
  end
end
