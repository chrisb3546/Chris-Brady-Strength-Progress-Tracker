class LiftsController < ApplicationController
    
        def index
            if params[:client_id] && @client = Client.find_by(id: params[]:id])
                @lift = @client.lifts.all
            end
        end
    
        def show
        end
    
        def new
            if params[:client_id] && @client = Client.find_by(id: params[]:id])
                @lift = @client.lift.build
            end
        end
    
        def create
            if params[:client_id] && @client = Client.find_by(id: params[]:id])
                @lift = @client.lift.build(lift_params)
            end
            if @lift.save
                redirect_to client_lift_path(@lift.client, @lift)
            end
        end
    
        def edit
        end
    
        def update
            if @lift.update(@lift_params)
                redirect_to client_lift_path(@lift.client, @lift)
            else
                render :edit 
            end
        end
    
        def destroy
        end
    
        private
    
        def lift_params
            params.require(:lift).permit(:client_id, :name, :weight, :ROM, :repetitions, :date, :notes)
        end
    

end
