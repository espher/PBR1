class CreateLevelfoureffects < ActiveRecord::Migration
  def change
    create_table :levelfoureffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
