class Player < ActiveRecord::Base
  # has_many :player_cards
  belongs_to :team
end
