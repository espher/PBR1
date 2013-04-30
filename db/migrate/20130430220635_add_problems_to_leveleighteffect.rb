class AddProblemsToLeveleighteffect < ActiveRecord::Migration
  def change
    add_column :leveleighteffects, :problem_id, :integer
  end
end
