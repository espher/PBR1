class Levelfiveway < ActiveRecord::Base
  belongs_to :levelfourway
  attr_accessible :content
  has_many :levelsixway
end
