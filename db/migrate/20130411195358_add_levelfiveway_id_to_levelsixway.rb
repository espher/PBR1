class AddLevelfivewayIdToLevelsixway < ActiveRecord::Migration
  def change
    add_column :levelsixways, :levelfiveway_id, :integer
  end
end
