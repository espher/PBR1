class Levelfivecause < ActiveRecord::Base
 
   belongs_to :levelfourcause
  attr_accessible :content
  has_many :levelsixcause
end
