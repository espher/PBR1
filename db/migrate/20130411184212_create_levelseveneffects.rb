class CreateLevelseveneffects < ActiveRecord::Migration
  def change
    create_table :levelseveneffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
