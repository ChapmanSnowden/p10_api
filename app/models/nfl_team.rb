class NflTeam < ActiveRecord::Base
  # Remember to create a migration!
  has_many :fantasy_players
end
