class AddLevelsixendIdToLevelsevenend < ActiveRecord::Migration
  def change
    add_column :levelsevenends, :levelsixend_id, :integer
  end
end
