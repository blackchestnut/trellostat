require 'trello'

class Client
  def initialize auth
    @auth = auth
    @client = Trello::Client.new(
      consumer_key: ENV['TRELLO_KEY'],
      consumer_secret: ENV['TRELLO_SECRET'],
      oauth_token: @auth['credentials']['token'],
      oauth_token_secret: @auth['credentials']['token']
    )
  end

  def id
    @auth['uid']
  end

  def member
    @member ||= @client.find :member, id
  end

  def boards
    @boards ||= member.boards
  end

  def board id
    boards.select{ |b| b.id == id }.first
  end
end
