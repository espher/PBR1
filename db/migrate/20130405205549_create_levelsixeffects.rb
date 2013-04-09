class CreateLevelsixeffects < ActiveRecord::Migration
  def change
    create_table :levelsixeffects do |t|
      t.string :content
      t.references :problem
      t.references :levelfiveeffect

      t.timestamps
    end
    add_index :levelsixeffects, :problem_id
    add_index :levelsixeffects, :levelfiveeffect_id
  end
end
