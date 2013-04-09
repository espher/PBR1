class CreateLevelfourcauses < ActiveRecord::Migration
  def change
    create_table :levelfourcauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :levelfourcauses, :problem_id
  end
end
