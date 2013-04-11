class AddLeveltwoeffectIdToLevelthreeeffect < ActiveRecord::Migration
  def change
    add_column :levelthreeeffects, :leveltwoeffect_id, :integer
  end
end
