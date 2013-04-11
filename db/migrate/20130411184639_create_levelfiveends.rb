class CreateLevelfiveends < ActiveRecord::Migration
  def change
    create_table :levelfiveends do |t|
      t.string :content

      t.timestamps
    end
  end
end
