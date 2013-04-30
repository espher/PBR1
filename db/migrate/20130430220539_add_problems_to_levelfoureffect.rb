class AddProblemsToLevelfoureffect < ActiveRecord::Migration
  def change
    add_column :levelfoureffects, :problem_id, :integer
  end
end
