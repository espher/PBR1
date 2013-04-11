class CreateLevelthreecauses < ActiveRecord::Migration
  def change
    create_table :levelthreecauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
