class Levelsevenend < ActiveRecord::Base
  belongs_to :levelsixend
  attr_accessible :content

  has_many :leveleightend
end
