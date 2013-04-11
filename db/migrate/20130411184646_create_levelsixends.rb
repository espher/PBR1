class CreateLevelsixends < ActiveRecord::Migration
  def change
    create_table :levelsixends do |t|
      t.string :content

      t.timestamps
    end
  end
end
