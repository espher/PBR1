class Leveleighteffect < ActiveRecord::Base
  belongs_to :problem
  belongs_to :levelseveneffect
  attr_accessible :content
end
