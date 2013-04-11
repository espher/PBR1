class Leveleightway < ActiveRecord::Base
	belongs_to :levelsevenway
  attr_accessible :content
end
