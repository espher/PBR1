class AddLevelfoureffectIdToLevelfiveeffect < ActiveRecord::Migration
  def change
    add_column :levelfiveeffects, :levelfoureffect_id, :integer
  end
end
