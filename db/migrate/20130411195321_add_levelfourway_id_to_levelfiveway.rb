class AddLevelfourwayIdToLevelfiveway < ActiveRecord::Migration
  def change
    add_column :levelfiveways, :levelfourway_id, :integer
  end
end
