class Ticket < ActiveRecord::Base
  attr_accessible :description, :title
  validates :description, :presence => true,
							:length => { :minimum => 10 }
  validates :title, :presence => true

  belongs_to :user
end