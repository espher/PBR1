class Levelfiveeffect < ActiveRecord::Base
 
  belongs_to :levelfoureffect
  attr_accessible :content
  has_many :levelsixeffect
end
