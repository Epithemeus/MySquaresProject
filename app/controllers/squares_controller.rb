class SquaresController < ApplicationController
  def all
    @squares = Square.all
  end

  def new
    @square = Square.new
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

    if @square.save
      redirect_to squares_path
    else
      render 'new'
    end
  end

  def update
    @square = Square.find(params[:id])

    if @square.update(square_params)
      redirect_to squares_path
    else
      render 'edit'
    end
  end

  def destroy
    @square = Square.find(params[:id])
    @square.destroy

    redirect_to squares_path
  end

  private
    def square_params
      params.require(:square).permit(:length, :width, :color)
    end
end
