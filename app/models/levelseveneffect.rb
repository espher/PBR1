class Levelseveneffect < ActiveRecord::Base
  
  belongs_to :levelsixeffect
  attr_accessible :content, :levelsixeffect_id

  has_many :leveleighteffect
end
