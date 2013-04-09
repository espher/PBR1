class CreateLevelfivecauses < ActiveRecord::Migration
  def change
    create_table :levelfivecauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :levelfivecauses, :problem_id
  end
end
