class AddProblemsToLevelsixcause < ActiveRecord::Migration
  def change
    add_column :levelsixcauses, :problem_id, :integer
  end
end
