class CreateLeveleighteffects < ActiveRecord::Migration
  def change
    create_table :leveleighteffects do |t|
      t.string :content
      t.references :problem
      t.references :levelseveneffect

      t.timestamps
    end
    add_index :leveleighteffects, :problem_id
    add_index :leveleighteffects, :levelseveneffect_id
  end
end
