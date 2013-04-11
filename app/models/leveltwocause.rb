class Leveltwocause < ActiveRecord::Base
  
  belongs_to :levelonecause
  attr_accessible :content
  has_many :levelthreecause
end
