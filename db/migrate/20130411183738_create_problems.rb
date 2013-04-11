class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.integer :budget_program
      t.string :city
      t.string :department
      t.string :email
      t.string :name
      t.string :responsable_unit

      t.timestamps
    end
  end
end
