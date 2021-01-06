class PartiesController < ApplicationController

    def index
        @parties = Party.order(:date)
    end

    def show
        @party = Party.find(params[:id])
    end

    def new 
        @party = Party.new
    end

    def create
        
    end

    private

    def party_params

        params.require(:party).permit(:name, :date, :budget, :private)

    end 

end
