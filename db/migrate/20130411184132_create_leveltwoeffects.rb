class CreateLeveltwoeffects < ActiveRecord::Migration
  def change
    create_table :leveltwoeffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
