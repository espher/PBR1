class CreateLeveltwoends < ActiveRecord::Migration
  def change
    create_table :leveltwoends do |t|
      t.string :content

      t.timestamps
    end
  end
end
