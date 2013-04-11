class Levelfourend < ActiveRecord::Base
   belongs_to :levelthreeend
  attr_accessible :content
  has_many :levelfiveend
end
