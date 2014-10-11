class Project < ActiveRecord::Base

	validates :name, :budget, presence: true
	has_many :timesheets
	
end
