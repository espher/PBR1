class Levelseveneffect < ActiveRecord::Base
  
  belongs_to :levelsixeffect
  attr_accessible :content

  has_many :leveleighteffect
end
