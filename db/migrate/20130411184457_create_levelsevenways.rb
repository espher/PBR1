class CreateLevelsevenways < ActiveRecord::Migration
  def change
    create_table :levelsevenways do |t|
      t.string :content

      t.timestamps
    end
  end
end
