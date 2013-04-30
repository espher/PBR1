class Levelthreeway < ActiveRecord::Base
belongs_to :leveltwoway
  attr_accessible :content
  has_many :levelfourway
end
