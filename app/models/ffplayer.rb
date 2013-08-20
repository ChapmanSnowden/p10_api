class FantasyPlayer < ActiveRecord::Base
  # Remember to create a migration!
    def get_player_data
      FFNerd.player_detail(player_id) do |player|
        player.create
      end
    end
end
