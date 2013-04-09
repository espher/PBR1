class Levelsixeffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :levelfiveeffect
  attr_accessible :content
end
