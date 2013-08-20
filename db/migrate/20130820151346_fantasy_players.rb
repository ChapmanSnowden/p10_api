class FantasyPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_players do |t|
      t.string :first_name
      t.string :last_name
      t.string :team_id
      t.string :type
      t.integer :ffn_key

      t.timestamps
    end
  end
end
