class ListsController < ApplicationController
  def show
    @board = client.board(params[:board_id])
    @list = @board.lists.select{ |e| e.id == params[:list_id] }.first
  end
end
