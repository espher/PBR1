class Levelfourcause < ActiveRecord::Base
  
   belongs_to :levelthreecause
  attr_accessible :content
  has_many :levelfivecause
end
