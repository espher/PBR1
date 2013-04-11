class AddProblemIdToLevelonecause < ActiveRecord::Migration
  def change
    add_column :levelonecauses, :problem_id, :integer
  end
end
