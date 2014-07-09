class BoardsController < ApplicationController
  def index
  end

  def show
    @board = client.board(params[:id])
  end
end
