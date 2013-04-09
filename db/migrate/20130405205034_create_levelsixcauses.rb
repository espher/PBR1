class CreateLevelsixcauses < ActiveRecord::Migration
  def change
    create_table :levelsixcauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :levelsixcauses, :problem_id
  end
end
