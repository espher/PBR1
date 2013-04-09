class Leveltwoeffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :leveloneeffect
  attr_accessible :content
end
