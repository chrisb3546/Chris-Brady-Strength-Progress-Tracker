class LiftsController < ApplicationController
    class liftsController < ApplicationController
        def index
        end
    
        def show
        end
    
        def new
        end
    
        def create
        end
    
        def edit
        end
    
        def update
        end
    
        def destroy
        end
    
        private
    
        def lift_params
            params.require(:lift).permit(:name, :weight, :ROM, :repetitions, :date, :notes)
        end
    
    end
end
