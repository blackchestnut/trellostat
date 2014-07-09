class LandingController < ApplicationController
  def index
    redirect_to boards_url if current_auth
  end
end
