class CreateLevelfourcauses < ActiveRecord::Migration
  def change
    create_table :levelfourcauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
