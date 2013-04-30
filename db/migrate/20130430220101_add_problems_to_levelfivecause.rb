class AddProblemsToLevelfivecause < ActiveRecord::Migration
  def change
    add_column :levelfivecauses, :problem_id, :integer
  end
end
