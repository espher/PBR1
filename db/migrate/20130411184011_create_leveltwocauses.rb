class CreateLeveltwocauses < ActiveRecord::Migration
  def change
    create_table :leveltwocauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
