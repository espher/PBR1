class CreateLevelfourways < ActiveRecord::Migration
  def change
    create_table :levelfourways do |t|
      t.string :content

      t.timestamps
    end
  end
end
