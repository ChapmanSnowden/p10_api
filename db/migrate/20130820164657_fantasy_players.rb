class FantasyPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_players do |t|
      t.string :name
      t.string :team_id
      t.string :position
      t.integer :ffn_key

      t.timestamps
    end
  end
end
