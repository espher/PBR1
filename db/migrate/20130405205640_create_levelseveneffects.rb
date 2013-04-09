class CreateLevelseveneffects < ActiveRecord::Migration
  def change
    create_table :levelseveneffects do |t|
      t.string :content
      t.references :problem
      t.references :levelsixeffect

      t.timestamps
    end
    add_index :levelseveneffects, :problem_id
    add_index :levelseveneffects, :levelsixeffect_id
  end
end
