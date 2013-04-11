class CreateLevelfiveways < ActiveRecord::Migration
  def change
    create_table :levelfiveways do |t|
      t.string :content

      t.timestamps
    end
  end
end
