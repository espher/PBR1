class Levelsevencause < ActiveRecord::Base
  
   belongs_to :levelsixcause
  attr_accessible :content, :levelsixcause_id

  has_many :leveleightcause
end
