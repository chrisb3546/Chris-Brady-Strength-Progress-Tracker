class ClientsController < ApplicationController
    before_action :find_client, only: [:show, :edit, :update, :destroy]

    def index
        @client = Client.all
    end

    def show
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.create(client_params)
        if @client.save
            redirect_to client_path(@client)
        else 
            render :new
        end
    end 

    def edit
    end

    def update
        if @client.update(client_params)
          redirect_to client_path( @client)
        else 
           render :edit
        end
    end

    def destroy
        @client.destroy 
        redirect_to clients_path
    end

    private

    def client_params
        params.require(:client).permit(:name)
    end

    def find_client
        @client = Client.find_by(id: params[:id])
    end


end
