class CreateLevelthreeends < ActiveRecord::Migration
  def change
    create_table :levelthreeends do |t|
      t.string :content

      t.timestamps
    end
  end
end
