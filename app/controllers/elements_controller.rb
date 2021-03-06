class ElementsController < ApplicationController

  before_action :fetch_element, only: [ :show, :edit, :update, :destroy, :toggle_featured ]
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

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end


  def toggle_featured
    #flips feature value
    @element.toggle!( :featured )
    #message for succesful change
    flash[:notice] = "Succesful change"
    redirect_to @element
  end

  def special_elements
    session[:vip] = true
    redirect_to root_path
  end

  private
    def fetch_element
      @element = Element.find(params[:id])
    end

end
