class PartiesController < ApplicationController

    def index
        if  params[:q]
            @parties = Party.search_by_name(params[:q])
        else
        @parties = Party.order_by_budget
        end
    end

    def show
        @party = Party.find(params[:id])
    end

    def new 
        @party = Party.new
    end

    def create

        @party = Party.new(party_params)
        if @party.save 
            redirect_to @party 
        else
            render :new 
        end
        
    end

    private

    def party_params

        params.require(:party).permit(:name, :date, :budget, :private, :category_name)

    end 

end
