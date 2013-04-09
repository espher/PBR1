class CreateLevelsevencauses < ActiveRecord::Migration
  def change
    create_table :levelsevencauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :levelsevencauses, :problem_id
  end
end
