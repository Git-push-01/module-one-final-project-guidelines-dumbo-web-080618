class Team < ActiveRecord::Base
has_many :player_cards
has_many :players, through: :player_cards

end
