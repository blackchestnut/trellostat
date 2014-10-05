class CardsFilter
  def initialize params
    @params = params
  end

  def for cards
    if @params[:last]
      cards.last @params[:last].to_i
    elsif @params[:first]
      cards.first @params[:first].to_i
    elsif @params[:oldest]
      cards.sort_by { |card| card.short_id }.take(@params[:oldest].to_i)
    elsif @params[:newest]
      cards.sort_by { |card| -card.short_id }.take(@params[:newest].to_i)
    end
  end
end
