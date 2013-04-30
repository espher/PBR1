class Levelfivecause < ActiveRecord::Base
 
   belongs_to :levelfourcause
  attr_accessible :content, :levelfourcause_id
  has_many :levelsixcause
end
