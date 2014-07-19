class ListsController < ApplicationController
  before_action :fetch_board
  before_action :fetch_lists

  def show
  end

private
  def fetch_lists
    @lists = @board.lists.select{ |e| e.id == params[:list_id] || params[:list_id] == 'all' }
  end
end
