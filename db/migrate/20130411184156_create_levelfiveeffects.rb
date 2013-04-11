class CreateLevelfiveeffects < ActiveRecord::Migration
  def change
    create_table :levelfiveeffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
