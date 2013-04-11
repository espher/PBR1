class AddLevelfourendIdToLevelfiveend < ActiveRecord::Migration
  def change
    add_column :levelfiveends, :levelfourend_id, :integer
  end
end
