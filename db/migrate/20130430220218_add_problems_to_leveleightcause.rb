class AddProblemsToLeveleightcause < ActiveRecord::Migration
  def change
    add_column :leveleightcauses, :problem_id, :integer
  end
end
