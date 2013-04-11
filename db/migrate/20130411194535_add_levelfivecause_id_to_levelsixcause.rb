class AddLevelfivecauseIdToLevelsixcause < ActiveRecord::Migration
  def change
    add_column :levelsixcauses, :levelfivecause_id, :integer
  end
end
