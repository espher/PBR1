class CreateLeveltwocauses < ActiveRecord::Migration
  def change
    create_table :leveltwocauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :leveltwocauses, :problem_id
  end
end
