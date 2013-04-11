class Leveltwoway < ActiveRecord::Base
  belongs_to :leveloneway
  attr_accessible :content
  has_many :levelthreeway
end
