class CreateLeveloneeffects < ActiveRecord::Migration
  def change
    create_table :leveloneeffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
