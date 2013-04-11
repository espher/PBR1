class Leveltwoeffect < ActiveRecord::Base
   belongs_to :leveloneeffect
  attr_accessible :content
  has_many :levelthreeeffect
end
