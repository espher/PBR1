class AddLeveloneeffectIdToLeveltwoeffect < ActiveRecord::Migration
  def change
    add_column :leveltwoeffects, :leveloneeffect_id, :integer
  end
end
