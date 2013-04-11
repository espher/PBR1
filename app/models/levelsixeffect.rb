class Levelsixeffect < ActiveRecord::Base
  
  belongs_to :levelfiveeffect
  attr_accessible :content
  has_many :levelseveneffect
end
