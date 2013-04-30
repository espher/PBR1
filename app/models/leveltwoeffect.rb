class Leveltwoeffect < ActiveRecord::Base
   belongs_to :leveloneeffect
  attr_accessible :content, :leveloneeffect_id
  has_many :levelthreeeffect
end
