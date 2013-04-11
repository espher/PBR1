class CreateLeveleightcauses < ActiveRecord::Migration
  def change
    create_table :leveleightcauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
