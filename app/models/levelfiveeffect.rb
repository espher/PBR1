class Levelfiveeffect < ActiveRecord::Base
 
  belongs_to :levelfoureffect
  attr_accessible :content, :levelfoureffect_id
  has_many :levelsixeffect
end
