class AddProblemIdToLeveloneeffect < ActiveRecord::Migration
  def change
    add_column :leveloneeffects, :problem_id, :integer
  end
end
