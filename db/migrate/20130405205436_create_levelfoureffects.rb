class CreateLevelfoureffects < ActiveRecord::Migration
  def change
    create_table :levelfoureffects do |t|
      t.string :content
      t.references :problem
      t.references :levelthreeeffect

      t.timestamps
    end
    add_index :levelfoureffects, :problem_id
    add_index :levelfoureffects, :levelthreeeffect_id
  end
end
