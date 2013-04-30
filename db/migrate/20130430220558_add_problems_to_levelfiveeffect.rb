class AddProblemsToLevelfiveeffect < ActiveRecord::Migration
  def change
    add_column :levelfiveeffects, :problem_id, :integer
  end
end
