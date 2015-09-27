class SquaresController < ApplicationController
  def new
  end

  def create
    render plain: params[:square].inspect
  end
end
