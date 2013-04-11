class CreateLeveleightends < ActiveRecord::Migration
  def change
    create_table :leveleightends do |t|
      t.string :content

      t.timestamps
    end
  end
end
