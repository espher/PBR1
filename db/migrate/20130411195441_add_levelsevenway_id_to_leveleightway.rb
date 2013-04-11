class AddLevelsevenwayIdToLeveleightway < ActiveRecord::Migration
  def change
    add_column :leveleightways, :levelsevenway_id, :integer
  end
end
