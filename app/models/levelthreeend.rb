class Levelthreeend < ActiveRecord::Base
  belongs_to :leveltwoend
  attr_accessible :content
  has_many :levelfourend
end
