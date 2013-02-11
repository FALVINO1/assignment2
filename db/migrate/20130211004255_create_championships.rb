class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :TeamName
      t.integer :Year
      t.integer :Wins
      t.integer :Loses
      t.integer :Team_id

      t.timestamps
    end
  end
end
