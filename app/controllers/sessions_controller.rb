class SessionsController < ApplicationController
  include ApplicationHelper

  def create
    save_auth request.env['omniauth.auth']
    redirect_to root_url
  end

  def logout
    reset_auth
    redirect_to root_url
  end
end

