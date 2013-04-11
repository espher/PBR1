class AddProblemIdToLeveloneway < ActiveRecord::Migration
  def change
    add_column :leveloneways, :problem_id, :integer
  end
end
