class CreateLeveloneeffects < ActiveRecord::Migration
  def change
    create_table :leveloneeffects do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :leveloneeffects, :problem_id
  end
end
