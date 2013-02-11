class Championship < ActiveRecord::Base
  attr_accessible :Loses, :TeamName, :Team_id, :Wins, :Year
  
  belongs_to :Team
end
