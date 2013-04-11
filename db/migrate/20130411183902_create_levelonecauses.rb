class CreateLevelonecauses < ActiveRecord::Migration
  def change
    create_table :levelonecauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
