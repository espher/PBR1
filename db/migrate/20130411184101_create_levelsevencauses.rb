class CreateLevelsevencauses < ActiveRecord::Migration
  def change
    create_table :levelsevencauses do |t|
      t.string :content

      t.timestamps
    end
  end
end
