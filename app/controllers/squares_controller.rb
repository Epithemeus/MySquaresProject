class SquaresController < ApplicationController
  def new
  end

  def index
      @squares = Square.all
  end

  def show
    @square = Square.find(params[:id])
  end

  def create
    @square = Square.new(square_params)

    @square.save
    redirect_to @square
  end

  private
    def square_params
      params.require(:square).permit(:length, :width)
    end
end
