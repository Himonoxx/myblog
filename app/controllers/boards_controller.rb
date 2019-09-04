class BoardsController < ApplicationController
    def index
    end
    
    def new
        @board = Board.new
    end
    
    def create
        # render plain: params[:board].inspect
        @board = Board.new(board_params)
        @board.save
        redirect_to boards_path
    end
    
    def show
        @board = Board.find(params[:id])
    end
    
    def edit
        @board = Board.find(params[:id])
    end
    
    def update
        @board = params
        @board.save
        if @board.save
            redirect_to root_path
        else
            redirect_back(fallback_location: root_path)
        end
    end
    
    def destory
        
    end
    
    def board_params
        params.require(:board).permit(
            :name, :title, :body,
            )
    end
    
        
end
