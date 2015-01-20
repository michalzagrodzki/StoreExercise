class ElementsController < ApplicationController

  def show
    @element = Element.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @element }
    end

  end

  def index
    @elements = Element.all

    respond_to do |format|
      format.html
      format.json { render json: @elements }
    end

  end
  
end
