class AquariaController < ApplicationController
    def new
      @aquarium = Aquarium.new
    end

    def create
      @user = User.find(params[:id])
      @aquarium = Aquarium.new(params.require(:aquarium).permit(:title, :description))
      @aquaria.user = @user 

      if @aquarium.save
        redirect_to aquarium_path(@aquarium)
      else
        render :new # :new refers to the view template
      end
    end # end of create method

    def show
      @aquarium = Aquarium.find(params[:id])
    end

    def index
    end
end
