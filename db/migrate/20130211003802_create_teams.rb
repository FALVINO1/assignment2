class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :TeamName
      t.string :City
      t.integer :Championships
      t.integer :Player_id

      t.timestamps
    end
  end
end
