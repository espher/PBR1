class Levelfourcause < ActiveRecord::Base
  
   belongs_to :levelthreecause
  attr_accessible :content, :levelthreecause_id
  has_many :levelfivecause
end
