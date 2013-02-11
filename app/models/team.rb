class Team < ActiveRecord::Base
  attr_accessible :Championships, :City, :Player_id, :TeamName

  has_and_belongs_to_many :Player

end
