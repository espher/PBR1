class Levelfourway < ActiveRecord::Base
     belongs_to :levelthreeway
  attr_accessible :content
  has_many :levelfiveway
end
