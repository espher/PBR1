class CreateLevelfiveeffects < ActiveRecord::Migration
  def change
    create_table :levelfiveeffects do |t|
      t.string :content
      t.references :problem
      t.references :levelfoureffect

      t.timestamps
    end
    add_index :levelfiveeffects, :problem_id
    add_index :levelfiveeffects, :levelfoureffect_id
  end
end
