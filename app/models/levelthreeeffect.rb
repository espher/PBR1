class Levelthreeeffect < ActiveRecord::Base
  
  belongs_to :leveltwoeffect
  attr_accessible :content
  has_any :levelfoureffect
end
