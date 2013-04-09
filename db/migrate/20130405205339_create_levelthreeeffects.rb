class CreateLevelthreeeffects < ActiveRecord::Migration
  def change
    create_table :levelthreeeffects do |t|
      t.string :content
      t.references :problem
      t.references :leveltwoeffect

      t.timestamps
    end
    add_index :levelthreeeffects, :problem_id
    add_index :levelthreeeffects, :leveltwoeffect_id
  end
end
