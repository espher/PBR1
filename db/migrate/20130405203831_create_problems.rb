class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.string :department
      t.string :responsable_unit
      t.string :email
      t.string :budget_program
      t.string :city

      t.timestamps
    end
  end
end
