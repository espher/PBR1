class AddProblemIdToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :problem_id, :integer
  end
end
