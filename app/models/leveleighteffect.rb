class Leveleighteffect < ActiveRecord::Base
  
  belongs_to :levelseveneffect
  attr_accessible :content, :levelseveneffect_id
end
