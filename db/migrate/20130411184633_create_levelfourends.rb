class CreateLevelfourends < ActiveRecord::Migration
  def change
    create_table :levelfourends do |t|
      t.string :content

      t.timestamps
    end
  end
end
