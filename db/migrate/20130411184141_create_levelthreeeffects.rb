class CreateLevelthreeeffects < ActiveRecord::Migration
  def change
    create_table :levelthreeeffects do |t|
      t.string :content

      t.timestamps
    end
  end
end
