class ApplicationController < ActionController::Base
  include ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

protected
  def fetch_board
    @board = client.board params[:board_id]
    raise ActionController::RoutingError.new 'Not Found' unless @board
  end
end
