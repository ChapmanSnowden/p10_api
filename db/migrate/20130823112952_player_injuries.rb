class PlayerInjuries < ActiveRecord::Migration
  def change
  	create_table :player_injuries do |t|
  		t.references :fantasy_players
  		t.text :injury_overview
  		t.text :practice_status
  		t.text :game_status
  		t.text :status_last_updated 

  		t.timestamps
  	end
  end
end
