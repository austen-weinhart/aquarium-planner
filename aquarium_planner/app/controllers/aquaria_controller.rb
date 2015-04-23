class AquariaController < ApplicationController
  before_action :require_login
    def new
      @aquarium = Aquarium.new
      @fishes = Fish.all
      @users = User.all
    end

    def create
      @aquarium = Aquarium.new(aquarium_params)
      @aquarium.user = current_user 

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

    def edit
    @aquarium = Aquarium.find(params[:id])
   end

   def update
    @aquarium = Aquarium.find(params[:id])

    if @aquarium.update_attributes(aquarium_params)
      redirect_to aquaria_path
    else
      render :edit
    end
   end #end update def

   def destroy
    @aquarium = Aquarium.find(params[:id])
    @aquarium.destroy
    redirect_to aquaria_path
   end

    private
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access that page."
        redirect_to login_path
      end
    end

    def aquarium_params
      params.require(:aquarium).permit(:title, :description, fish_ids: [])
    end 
end
