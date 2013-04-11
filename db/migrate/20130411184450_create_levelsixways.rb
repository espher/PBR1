class CreateLevelsixways < ActiveRecord::Migration
  def change
    create_table :levelsixways do |t|
      t.string :content

      t.timestamps
    end
  end
end
