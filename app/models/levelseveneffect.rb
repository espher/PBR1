class Levelseveneffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :levelsixeffect
  attr_accessible :content
end
