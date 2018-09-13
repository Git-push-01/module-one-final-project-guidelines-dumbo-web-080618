class League < ActiveRecord::Base
  has_many :teams
  has_many :players, through: :teams
  # has_many :teams, through: :player_cards


end
