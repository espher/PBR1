class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.string :content
      t.references :problem

      t.timestamps
    end
    add_index :pruebas, :problem_id
  end
end
