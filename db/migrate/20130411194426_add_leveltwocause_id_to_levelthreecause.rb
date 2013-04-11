class AddLeveltwocauseIdToLevelthreecause < ActiveRecord::Migration
  def change
    add_column :levelthreecauses, :leveltwocause_id, :integer
  end
end
