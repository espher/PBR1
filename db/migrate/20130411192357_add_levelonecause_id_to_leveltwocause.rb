class AddLevelonecauseIdToLeveltwocause < ActiveRecord::Migration
  def change
    add_column :leveltwocauses, :levelonecause_id, :integer
  end
end
