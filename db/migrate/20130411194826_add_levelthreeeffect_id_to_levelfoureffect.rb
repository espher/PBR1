class AddLevelthreeeffectIdToLevelfoureffect < ActiveRecord::Migration
  def change
    add_column :levelfoureffects, :levelthreeeffect_id, :integer
  end
end
