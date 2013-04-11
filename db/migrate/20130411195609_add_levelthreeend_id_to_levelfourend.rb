class AddLevelthreeendIdToLevelfourend < ActiveRecord::Migration
  def change
    add_column :levelfourends, :levelthreeend_id, :integer
  end
end
