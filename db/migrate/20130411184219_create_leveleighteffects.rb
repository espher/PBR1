class CreateLeveleighteffects < ActiveRecord::Migration
  def change
    create_table :leveleighteffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
