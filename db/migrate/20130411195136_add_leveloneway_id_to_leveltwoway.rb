class AddLevelonewayIdToLeveltwoway < ActiveRecord::Migration
  def change
    add_column :leveltwoways, :leveloneway_id, :integer
  end
end
