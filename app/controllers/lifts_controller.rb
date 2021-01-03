class LiftsController < ApplicationController
    before_action :find_lift, only: [:show, :edit, :update, :destroy]
        def index
            if params[:client_id] && @client = Client.find_by(id: params[:client_id])
                @lifts = @client.lifts.all
            end
        end
    
        def show
        end
    
        def new
            if params[:client_id] && @client = Client.find_by(id: params[:client_id])
                
                @lift = @client.lifts.build
            end
        end
    
        def create
            if params[:client_id] && @client = Client.find_by(id: params[:client_id])
                @lift = @client.lifts.build(lift_params)
            end
            if @lift.save
                redirect_to client_lift_path(@lift.client, @lift)
            end
        end
    
        def edit
        
        end
    
        def update
            if @lift.update(lift_params)
                redirect_to client_lift_path(@lift.client, @lift)
            else
                render :edit 
            end
        end
    
        def destroy
            @lift.destroy
            redirect_to client_path(@lift.client)
        end
    
        private
    
        def lift_params
            params.require(:lift).permit(:client_id, :name, :weight, :ROM, :repetitions, :date, :notes)
        end
        def find_lift
            @lift = Lift.find_by(id: params[:id])
            @client = @lift.client
        end
    

end
