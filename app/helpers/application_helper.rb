module ApplicationHelper
  def save_auth auth_hash
    session[:auth] = auth_hash
  end

  def current_auth
    session[:auth]
  end

  def client
    if current_auth
      @client ||= Client.new current_auth
    end
  end
end
