class CreateLevelsixeffects < ActiveRecord::Migration
  def change
    create_table :levelsixeffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
