class FishesController < ApplicationController
  def show
    @fish = Fish.find(params[:id])
  end
end
