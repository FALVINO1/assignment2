class CreatePlayersTeams < ActiveRecord::Migration
  def up
  	create_table :Players_Teams, :id => false do |t|
  		#Both IDs must have referrence
  		t.integer :Team_id, :null => false 
  		t.integer :Player_id, :null => false
  	end
  end

  def down
  	drop_table :Players_Teams
  end
end
