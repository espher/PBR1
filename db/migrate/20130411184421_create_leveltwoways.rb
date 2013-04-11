class CreateLeveltwoways < ActiveRecord::Migration
  def change
    create_table :leveltwoways do |t|
      t.string :content

      t.timestamps
    end
  end
end
