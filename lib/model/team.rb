class Team < ActiveRecord::Base
has_many :players
belongs_to :league

def add_to_league(league)
  self.league = league
  self.save
end

end
