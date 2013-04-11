class Levelsevencause < ActiveRecord::Base
  
   belongs_to :levelsixcause
  attr_accessible :content

  has_many :leveleightcause
end
