class AddProblemsToLevelseveneffect < ActiveRecord::Migration
  def change
    add_column :levelseveneffects, :problem_id, :integer
  end
end
