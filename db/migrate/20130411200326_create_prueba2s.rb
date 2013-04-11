class CreatePrueba2s < ActiveRecord::Migration
  def change
    create_table :prueba2s do |t|
      t.string :content
      t.references :levelfourend

      t.timestamps
    end
    add_index :prueba2s, :levelfourend_id
  end
end
