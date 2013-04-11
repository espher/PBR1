class Levelsixway < ActiveRecord::Base
     belongs_to :levelfiveway
  attr_accessible :content
  has_many :levelsevenway
end
