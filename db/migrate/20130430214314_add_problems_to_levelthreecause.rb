class AddProblemsToLevelthreecause < ActiveRecord::Migration
  def change
    add_column :levelthreecauses, :problem_id, :integer
  end
end
