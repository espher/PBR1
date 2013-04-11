class Levelthreecause < ActiveRecord::Base
  
  belongs_to :leveltwocause
  attr_accessible :content
  has_any :levelfourcause
end
