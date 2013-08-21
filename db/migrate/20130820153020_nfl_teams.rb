class NflTeams < ActiveRecord::Migration
  def change
    create_table :nfl_teams do |t|
      t.string :name
      t.string :city
      t.integer :wins
      t.integer :lossess

      t.timestamps
    end
  end
end
