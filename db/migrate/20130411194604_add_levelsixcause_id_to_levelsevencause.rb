class AddLevelsixcauseIdToLevelsevencause < ActiveRecord::Migration
  def change
    add_column :levelsevencauses, :levelsixcause_id, :integer
  end
end
