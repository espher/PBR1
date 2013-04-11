class AddLevelthreewayIdToLevelfourway < ActiveRecord::Migration
  def change
    add_column :levelfourways, :levelthreeway_id, :integer
  end
end
