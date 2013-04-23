class AddDatesToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :init_date, :date
    add_column :problems, :end_date, :date
  end
end
