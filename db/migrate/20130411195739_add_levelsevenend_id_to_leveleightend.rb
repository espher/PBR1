class AddLevelsevenendIdToLeveleightend < ActiveRecord::Migration
  def change
    add_column :leveleightends, :levelsevenend_id, :integer
  end
end
