class Levelfiveeffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :levelfoureffect
  attr_accessible :content
end
