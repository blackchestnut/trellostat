class ListsController < ApplicationController
  def show
    @board = client.board(params[:board_id])
    if params[:list_id] == 'all'
      @lists = @board.lists
    else
      @lists = @board.lists.select{ |e| e.id == params[:list_id] }
    end
  end
end
