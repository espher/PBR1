class Levelsixeffect < ActiveRecord::Base
  
  belongs_to :levelfiveeffect
  attr_accessible :content, :levelfiveeffect_id
  has_many :levelseveneffect
end
