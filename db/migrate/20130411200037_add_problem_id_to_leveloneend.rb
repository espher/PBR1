class AddProblemIdToLeveloneend < ActiveRecord::Migration
  def change
    add_column :leveloneends, :problem_id, :integer
  end
end
