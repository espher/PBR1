class AddProblemsToLevelsevencause < ActiveRecord::Migration
  def change
    add_column :levelsevencauses, :problem_id, :integer
  end
end
