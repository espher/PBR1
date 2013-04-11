class Levelsixend < ActiveRecord::Base
   belongs_to :levelfiveend
  attr_accessible :content
  has_many :levelsevenend
end
