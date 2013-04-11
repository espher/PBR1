class Levelfoureffect < ActiveRecord::Base
  
  belongs_to :levelthreeeffect
  attr_accessible :content
  has_many :levelfiveeffect
end
