class ProjectBelongsToATimesheet < ActiveRecord::Migration
 def up
	 add_column :timesheets, :project_id, :integer
	 	 
  end
	
  def down
	  remove_column :timesheets, :total
  end
end
