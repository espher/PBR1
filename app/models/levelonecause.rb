class Levelonecause < ActiveRecord::Base
  belongs_to :problem
  attr_accessible :content
end
