class AddProblemsToLevelsixeffect < ActiveRecord::Migration
  def change
    add_column :levelsixeffects, :problem_id, :integer
  end
end
