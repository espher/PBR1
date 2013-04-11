class AddLevelfourcauseIdToLevelfivecause < ActiveRecord::Migration
  def change
    add_column :levelfivecauses, :levelfourcause_id, :integer
  end
end
