class BoardsController < ApplicationController

    def new 
        @board = Board.new
    end

    def create 
        @board = Board.new(board_params)
        if @board.save
            redirect_to @board
        else
            render 'new'
        end
    end

    private

    def board_params
        params.require(:board).permit(:title, :user_id)
    end
end
