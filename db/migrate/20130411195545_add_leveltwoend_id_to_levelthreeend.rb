class AddLeveltwoendIdToLevelthreeend < ActiveRecord::Migration
  def change
    add_column :levelthreeends, :leveltwoend_id, :integer
  end
end
