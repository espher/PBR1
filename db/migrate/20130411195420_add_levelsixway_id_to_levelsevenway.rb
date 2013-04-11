class AddLevelsixwayIdToLevelsevenway < ActiveRecord::Migration
  def change
    add_column :levelsevenways, :levelsixway_id, :integer
  end
end
