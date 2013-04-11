class CreateLevelsevenends < ActiveRecord::Migration
  def change
    create_table :levelsevenends do |t|
      t.string :content

      t.timestamps
    end
  end
end
