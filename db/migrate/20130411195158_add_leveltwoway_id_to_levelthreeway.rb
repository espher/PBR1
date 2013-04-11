class AddLeveltwowayIdToLevelthreeway < ActiveRecord::Migration
  def change
    add_column :levelthreeways, :leveltwoway_id, :integer
  end
end
