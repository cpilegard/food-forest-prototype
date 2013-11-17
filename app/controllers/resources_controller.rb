class ResourcesController < ApplicationController

  def show
    @resources = Resource.all
  end

  def create
  end


end
