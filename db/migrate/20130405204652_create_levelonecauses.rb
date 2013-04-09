class CreateLevelonecauses < ActiveRecord::Migration
  def change
    create_table :levelonecauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :levelonecauses, :problem_id
  end
end
