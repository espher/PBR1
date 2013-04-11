class Levelsevenway < ActiveRecord::Base
belongs_to :levelsixway
  attr_accessible :content

  has_many :leveleightway
end
