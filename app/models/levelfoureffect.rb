class Levelfoureffect < ActiveRecord::Base
  
  belongs_to :levelthreeeffect
  attr_accessible :content, :levelthreeeffect_id
  has_many :levelfiveeffect
end
