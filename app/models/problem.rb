class Problem < ActiveRecord::Base
  attr_accessible :budget_program, :city, :department, :email, :name, :responsable_unit

  has_many :levelonecause
  has_many :leveltwocause, :through => :levelonecause
  has_many :levelthreecause, :through => :leveltwocause
  has_many :levelfourcause, :through => :levelthreecause
  has_many :levelfivecause, :through => :levelfourcause
  has_many :levelsixcause, :through => :levelfivecause
  has_many :levelsevencause, :through => :levelsixcause
  has_many :leveleightcause, :through => :levelsevencause


  accepts_nested_attributes_for :levelonecause
  accepts_nested_attributes_for :leveltwocause
  accepts_nested_attributes_for :levelthreecause
  accepts_nested_attributes_for :levelfourcause
  accepts_nested_attributes_for :levelfivecause
  accepts_nested_attributes_for :levelsixcause
  accepts_nested_attributes_for :levelsevencause
  accepts_nested_attributes_for :leveleightcause
end
