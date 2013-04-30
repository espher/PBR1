class Leveleightcause < ActiveRecord::Base
  
   belongs_to :levelsevencause
  attr_accessible :content, :levelsevencause_id
end
