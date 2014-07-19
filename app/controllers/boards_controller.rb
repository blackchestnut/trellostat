class BoardsController < ApplicationController
  before_action :fetch_board, only: [:show]

  def index
  end

  def show
    @lists = @board.lists
    @total_cards = @lists.sum{ |list| list.cards.count }
  end
end
