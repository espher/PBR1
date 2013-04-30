class Levelthreeeffect < ActiveRecord::Base
  
  belongs_to :leveltwoeffect
  attr_accessible :content, :leveltwoeffect_id
  has_many :levelfoureffect
end
