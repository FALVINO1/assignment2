class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :Name
      t.integer :Teams_Played_For
      t.string :Position
      t.integer :Points
      t.integer :Rebounds
      t.integer :Assists
      t.integer :Championships_Won
      t.integer :MVP_Won
      t.integer :Finals_MVP_Won
      t.integer :AllStar
      t.integer :Year_Retired

      t.timestamps
    end
  end
end
