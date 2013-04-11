class Levelfiveend < ActiveRecord::Base
  belongs_to :levelfourend
  attr_accessible :content
  has_many :levelsixend
end
