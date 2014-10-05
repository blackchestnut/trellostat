class LabelsController < ApplicationController
  before_action :fetch_board

  def index
    @labels = {}
    @board.lists.each do |list|
      list.cards.each do |card|
        card.card_labels.each do |label|
          @labels[label['name']] ||= { color: label['color'], cards: 0 }
          @labels[label['name']][:cards] += 1
        end
      end
    end
  end
end
