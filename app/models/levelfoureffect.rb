class Levelfoureffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :levelthreeeffect
  attr_accessible :content
end
