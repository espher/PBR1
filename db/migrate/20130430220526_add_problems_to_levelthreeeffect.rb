class AddProblemsToLevelthreeeffect < ActiveRecord::Migration
  def change
    add_column :levelthreeeffects, :problem_id, :integer
  end
end
