class AddProblemsToLevelfourcause < ActiveRecord::Migration
  def change
    add_column :levelfourcauses, :problem_id, :integer
  end
end
