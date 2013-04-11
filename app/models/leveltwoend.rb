class Leveltwoend < ActiveRecord::Base
   belongs_to :leveloneend
  attr_accessible :content
  has_many :levelthreeend
end
