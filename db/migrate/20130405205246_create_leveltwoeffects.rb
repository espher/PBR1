class CreateLeveltwoeffects < ActiveRecord::Migration
  def change
    create_table :leveltwoeffects do |t|
      t.string :content
      t.references :problem
      t.references :leveloneeffect

      t.timestamps
    end
    add_index :leveltwoeffects, :problem_id
    add_index :leveltwoeffects, :leveloneeffect_id
  end
end
