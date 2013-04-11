class AddLevelsevencauseIdToLeveleightcause < ActiveRecord::Migration
  def change
    add_column :leveleightcauses, :levelsevencause_id, :integer
  end
end
