class BoardsController < ApplicationController
  def index
  end

  def show
    @board = client.board(params[:board_id])
    @lists = @board.lists
    @total_cards = @lists.sum{ |list| list.cards.count }
  end
end
