class ForestsController < ApplicationController
  def new

  end

  def show
    @name = Forest.find(params[:id]).name
  end

  def create

  end

  def destroy

  end
end
