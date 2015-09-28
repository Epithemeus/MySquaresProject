class SquaresController < ApplicationController
  def new
  end

  def index
      @squares = Square.all
  end

  def show
    @square = Square.find(params[:id])
  end

  def edit
    @square = Square.find(params[:id])
  end

  def create
    @square = Square.new(square_params)

    @square.save
    redirect_to '/squares/index.html'
  end

  def update
  @square = Square.find(params[:id])
 
  if @square.update(square_params)
    redirect_to @square
  else
    render 'edit'
  end
end

  private
    def square_params
      params.require(:square).permit(:length, :width)
    end
end
