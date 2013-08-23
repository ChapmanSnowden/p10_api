class PlayerStats < ActiveRecord::Migration
  def change
  	create_table :player_stats do |t|
  		t.references :fantasy_players
  		t.integer :player_rank_by_pos
  		t.integer :current_week
  		t.integer :projected_stats_standard
  		t.integer :projected_stats_low
  		t.integer :projected_stats_high

  		t.timestamps
  	end
  end
end
