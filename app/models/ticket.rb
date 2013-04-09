class Ticket < ActiveRecord::Base
  attr_accessible :description, :email, :title
  validates :description, :presence => true,
							:length => { :minimum => 10 }
end
