class Player < ActiveRecord::Base
  attr_accessible :AllStar, :Assists, :Championships_Won, :Finals_MVP_Won, :MVP_Won, :Name, :Points, :Position, :Rebounds, :Teams_Played_For, :Year_Retired


  validates :AllStar, :numericality => true
  validates :Assists, :presence => true
  validates :Championships_Won, :numericality => true
  validates :Finals_MVP_Won, :numericality => true
  validates :MVP_Won, :numericality => true
  validates :Name, :presence => true
  validates :Points, :numericality => true
  validates :Position, :presence => true
  validates :Rebounds, :numericality => true
  validates :Teams_Played_For, :presence => true
  validates :Year_Retired, :numericality => true
  
  def pp
    	"#{Name} #{Points}"
  end
  
end
