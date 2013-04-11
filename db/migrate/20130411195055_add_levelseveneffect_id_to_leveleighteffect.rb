class AddLevelseveneffectIdToLeveleighteffect < ActiveRecord::Migration
  def change
    add_column :leveleighteffects, :levelseveneffect_id, :integer
  end
end
