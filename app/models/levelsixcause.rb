class Levelsixcause < ActiveRecord::Base
  
   belongs_to :levelfivecause
  attr_accessible :content
  has_many :levelsevencause
end
