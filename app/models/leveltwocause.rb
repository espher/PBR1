class Leveltwocause < ActiveRecord::Base
  
  belongs_to :levelonecause
  attr_accessible :content, :levelonecause_id
  has_many :levelthreecause
end
