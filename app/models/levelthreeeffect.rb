class Levelthreeeffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :leveltwoeffect
  attr_accessible :content
end
