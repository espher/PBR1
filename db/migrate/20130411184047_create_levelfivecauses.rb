class CreateLevelfivecauses < ActiveRecord::Migration
  def change
    create_table :levelfivecauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
