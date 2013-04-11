class Leveloneeffect < ActiveRecord::Base
  belongs_to :problem
  attr_accessible :content
  has_many :leveltwoeffect
end
