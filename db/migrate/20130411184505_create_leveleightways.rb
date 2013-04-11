class CreateLeveleightways < ActiveRecord::Migration
  def change
    create_table :leveleightways do |t|
      t.string :content

      t.timestamps
    end
  end
end
