class Problem < ActiveRecord::Base
  attr_accessible :leveloneeffect_attributes, :levelonecause_attributes, :budget_program, :city, :department, :email, :name, :responsable_unit, :init_date, :end_date, :organism, :definition, :idea_attributes

  has_many :idea
  has_many :levelonecause
  has_many :leveltwocause, :through => :levelonecause
  has_many :levelthreecause, :through => :leveltwocause
  has_many :levelfourcause, :through => :levelthreecause
  has_many :levelfivecause, :through => :levelfourcause
  has_many :levelsixcause, :through => :levelfivecause
  has_many :levelsevencause, :through => :levelsixcause
  has_many :leveleightcause, :through => :levelsevencause

  has_many :leveloneeffect
  has_many :leveltwoeffect, :through => :leveloneeffect
  has_many :levelthreeeffect, :through => :leveltwoeffect
  has_many :levelfoureffect, :through => :levelthreeeffect
  has_many :levelfiveeffect, :through => :levelfoureffect
  has_many :levelsixeffect, :through => :levelfiveeffect
  has_many :levelseveneffect, :through => :levelsixeffect
  has_many :leveleighteffect, :through => :levelseveneffect

  accepts_nested_attributes_for :idea, :allow_destroy => true
  accepts_nested_attributes_for :levelonecause, :allow_destroy => true
  accepts_nested_attributes_for :leveltwocause, :allow_destroy => true
  accepts_nested_attributes_for :levelthreecause, :allow_destroy => true
  accepts_nested_attributes_for :levelfourcause, :allow_destroy => true
  accepts_nested_attributes_for :levelfivecause, :allow_destroy => true
  accepts_nested_attributes_for :levelsixcause, :allow_destroy => true
  accepts_nested_attributes_for :levelsevencause, :allow_destroy => true
  accepts_nested_attributes_for :leveleightcause, :allow_destroy => true

  accepts_nested_attributes_for :leveloneeffect, :allow_destroy => true
  accepts_nested_attributes_for :leveltwoeffect, :allow_destroy => true
  accepts_nested_attributes_for :levelthreeeffect, :allow_destroy => true
  accepts_nested_attributes_for :levelfoureffect, :allow_destroy => true
  accepts_nested_attributes_for :levelfiveeffect, :allow_destroy => true
  accepts_nested_attributes_for :levelsixeffect, :allow_destroy => true
  accepts_nested_attributes_for :levelseveneffect, :allow_destroy => true
  accepts_nested_attributes_for :leveleighteffect, :allow_destroy => true

end
