class CreateLeveleightcauses < ActiveRecord::Migration
  def change
    create_table :leveleightcauses do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :leveleightcauses, :problem_id
  end
end
