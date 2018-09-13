class Player < ActiveRecord::Base
  # has_many :player_cards
  belongs_to :team

  def add_to_team(team)
    self.team = team
    self.save
  end

  
end

##
