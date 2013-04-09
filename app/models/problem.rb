class Problem < ActiveRecord::Base
  attr_accessible :budget_program, :city, :department, :email, :name, :responsable_unit

  has_many :levelonecause
  has_many :leveltwocause
  has_many :levelthreecause
  has_many :levelfourcause
  has_many :levelfivecause


  accepts_nested_attributes_for :levelonecause
  accepts_nested_attributes_for :leveltwocause
  accepts_nested_attributes_for :levelthreecause
  accepts_nested_attributes_for :levelfourcause
  accepts_nested_attributes_for :levelfivecause
end
