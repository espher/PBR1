class AddLevelsixeffectIdToLevelseveneffect < ActiveRecord::Migration
  def change
    add_column :levelseveneffects, :levelsixeffect_id, :integer
  end
end
