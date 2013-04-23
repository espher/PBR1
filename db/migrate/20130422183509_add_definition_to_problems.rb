class AddDefinitionToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :definition, :string
    add_column :problems, :organism, :string
  end
end
