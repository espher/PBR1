class CreateLevelthreecauses < ActiveRecord::Migration
  def change
    create_table :levelthreecauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :levelthreecauses, :problem_id
  end
end
