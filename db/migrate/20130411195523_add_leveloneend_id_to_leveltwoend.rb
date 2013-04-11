class AddLeveloneendIdToLeveltwoend < ActiveRecord::Migration
  def change
    add_column :leveltwoends, :leveloneend_id, :integer
  end
end
