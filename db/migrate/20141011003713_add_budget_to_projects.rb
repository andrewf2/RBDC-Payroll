class AddBudgetToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :budget, :decimal
  end
	
  def down
	remove_column :projects, :budget
  end
	
end
