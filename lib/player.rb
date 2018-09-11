class Player < ActiveRecord::Base
  has_many :player_cards
  has_many :teams, through: :player_cards


end
