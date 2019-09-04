class BoardsController < ApplicationController
    def index
    end
    
    def new
        @board = Board.all.order(created_at: 'desc')
        @b_count = Board.count
    end
    
    def create
        # render plain: params[:board].inspect
        @board = Board.new(board_params)
        if @board.save
            redirect_to boards_path
        else
            render plain: @board.errors.inspect
        end
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
