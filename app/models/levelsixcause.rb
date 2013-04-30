class Levelsixcause < ActiveRecord::Base
  
   belongs_to :levelfivecause
  attr_accessible :content, :levelfivecause_id
  has_many :levelsevencause
end
