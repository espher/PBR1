class CreateLeveloneways < ActiveRecord::Migration
  def change
    create_table :leveloneways do |t|
      t.string :content

      t.timestamps
    end
  end
end
