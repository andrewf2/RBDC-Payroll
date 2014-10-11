class AddTotalToTimesheet < ActiveRecord::Migration
 def up
	 add_column :timesheets, :total, :decimal
	 
  end
	
  def down
	  remove_column :timesheets, :total
  end
end
