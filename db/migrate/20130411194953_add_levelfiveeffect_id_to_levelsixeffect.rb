class AddLevelfiveeffectIdToLevelsixeffect < ActiveRecord::Migration
  def change
    add_column :levelsixeffects, :levelfiveeffect_id, :integer
  end
end
