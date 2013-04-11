class AddLevelthreecauseIdToLevelfourcause < ActiveRecord::Migration
  def change
    add_column :levelfourcauses, :levelthreecause_id, :integer
  end
end
