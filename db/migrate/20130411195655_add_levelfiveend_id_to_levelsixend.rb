class AddLevelfiveendIdToLevelsixend < ActiveRecord::Migration
  def change
    add_column :levelsixends, :levelfiveend_id, :integer
  end
end
