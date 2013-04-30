class Levelthreecause < ActiveRecord::Base
  
  belongs_to :leveltwocause
  attr_accessible :content, :leveltwocause_id
  has_many :levelfourcause
end
